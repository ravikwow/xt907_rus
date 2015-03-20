.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangeAccountStateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4790
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    .line 4791
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 4792
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->initFields()V

    .line 4793
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4543
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4544
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->initFields()V

    .line 4545
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 4540
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 4546
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$16402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 4540
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$16502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 4540
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$16602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 4540
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$16700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    .prologue
    .line 4540
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$16702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4540
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1

    .prologue
    .line 4550
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4559
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeAccountStateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$15900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4582
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 4583
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4584
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 1

    .prologue
    .line 4652
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    .prologue
    .line 4655
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4621
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    .line 4622
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4623
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v1

    .line 4625
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4632
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    .line 4633
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4634
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v1

    .line 4636
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4588
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4594
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4642
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4648
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4610
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4616
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4599
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4605
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1

    .prologue
    .line 4554
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 4572
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 4579
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 4571
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 4578
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4564
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ChangeAccountStateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$16000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 1

    .prologue
    .line 4653
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 1

    .prologue
    .line 4657
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method
