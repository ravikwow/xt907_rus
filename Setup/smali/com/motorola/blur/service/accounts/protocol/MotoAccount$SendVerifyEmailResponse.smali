.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendVerifyEmailResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2847
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    .line 2848
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 2849
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->initFields()V

    .line 2850
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2600
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2601
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->initFields()V

    .line 2602
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 2597
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 2603
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$9402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2597
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 2597
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1

    .prologue
    .line 2607
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2616
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_SendVerifyEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$8900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2639
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 2640
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2641
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 1

    .prologue
    .line 2709
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    .prologue
    .line 2712
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2678
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    .line 2679
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2680
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v1

    .line 2682
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2689
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    .line 2690
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2691
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v1

    .line 2693
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2645
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2651
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2699
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2705
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2667
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2673
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2656
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2662
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1

    .prologue
    .line 2611
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2628
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 2635
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2621
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_SendVerifyEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$9000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 1

    .prologue
    .line 2710
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 1

    .prologue
    .line 2714
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method
