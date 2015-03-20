.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetPasswordResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8794
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    .line 8795
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 8796
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->initFields()V

    .line 8797
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8547
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8548
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->initFields()V

    .line 8549
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 8544
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 8550
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$30902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 8544
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$31002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 8544
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$31102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 8544
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$31200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    .prologue
    .line 8544
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$31202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8544
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 8554
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8563
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ResetPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$30400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8586
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 8587
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8588
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8656
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    .prologue
    .line 8659
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8625
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    .line 8626
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8627
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v1

    .line 8629
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8636
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    .line 8637
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8638
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v1

    .line 8640
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8592
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8598
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8646
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8652
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8614
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8620
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8603
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8609
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8544
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8544
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 8558
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 8576
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 8583
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 8575
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 8582
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8568
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ResetPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$30500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8544
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8544
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8657
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8544
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8544
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8661
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method
