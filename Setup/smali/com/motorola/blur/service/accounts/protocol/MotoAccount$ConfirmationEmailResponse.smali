.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmationEmailResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x1

.field public static final MESSAGEINFO_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;


# instance fields
.field private error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private hasError:Z

.field private hasMessageInfo:Z

.field private messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9976
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    .line 9977
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 9978
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->initFields()V

    .line 9979
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9729
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 9730
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->initFields()V

    .line 9731
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 9726
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 9732
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$35102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 9726
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasError:Z

    return p1
.end method

.method static synthetic access$35202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 9726
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object p1
.end method

.method static synthetic access$35302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .param p1, "x1"    # Z

    .prologue
    .line 9726
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo:Z

    return p1
.end method

.method static synthetic access$35400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    .prologue
    .line 9726
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method static synthetic access$35402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9726
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 9736
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9745
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ConfirmationEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$34600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 9768
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 9769
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9770
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 9838
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    .prologue
    .line 9841
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9807
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    .line 9808
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9809
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v1

    .line 9811
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9818
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    .line 9819
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9820
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v1

    .line 9822
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9774
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9780
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9828
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9834
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9796
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9802
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9785
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9791
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9726
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9726
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 9740
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 9758
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 9765
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 9757
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasError:Z

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 9764
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 9750
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_ConfirmationEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$34700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9726
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9726
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 9839
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9726
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9726
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 9843
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method
