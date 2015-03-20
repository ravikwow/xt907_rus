.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangeLoginResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6906
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    .line 6907
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 6908
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->initFields()V

    .line 6909
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6659
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6660
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->initFields()V

    .line 6661
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 6656
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 6662
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$24202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 6656
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$24302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 6656
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$24402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 6656
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$24500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    .prologue
    .line 6656
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$24502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6656
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1

    .prologue
    .line 6666
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6675
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeLoginResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$23700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6698
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 6699
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6700
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    .locals 1

    .prologue
    .line 6768
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$24000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    .prologue
    .line 6771
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6737
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    .line 6738
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6739
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v1

    .line 6741
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6748
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    .line 6749
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6750
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v1

    .line 6752
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6704
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6710
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6758
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6764
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6726
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6732
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6715
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6721
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;->access$23900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6656
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6656
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;
    .locals 1

    .prologue
    .line 6670
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 6688
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 6695
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 6687
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 6694
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6680
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeLoginResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$23800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6656
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6656
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    .locals 1

    .prologue
    .line 6769
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6656
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6656
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;
    .locals 1

    .prologue
    .line 6773
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method
