.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientSimInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    }
.end annotation


# static fields
.field public static final IMSI_FIELD_NUMBER:I = 0x2

.field public static final PHONE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;


# instance fields
.field private hasIMSI:Z

.field private hasPhone:Z

.field private iMSI_:Ljava/lang/String;

.field private phone_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 962
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    .line 963
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internalForceInit()V

    .line 964
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->initFields()V

    .line 965
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 760
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->phone_:Ljava/lang/String;

    .line 767
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->iMSI_:Ljava/lang/String;

    .line 734
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->initFields()V

    .line 735
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 760
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->phone_:Ljava/lang/String;

    .line 767
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->iMSI_:Ljava/lang/String;

    .line 736
    return-void
.end method

.method static synthetic access$3302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 730
    iput-boolean p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->hasPhone:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->phone_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 730
    iput-boolean p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->hasIMSI:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->iMSI_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1

    .prologue
    .line 740
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 749
    # getter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientSimInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    .locals 1

    .prologue
    .line 840
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3100()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    .prologue
    .line 843
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    .line 810
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v1

    .line 813
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    .line 821
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v1

    .line 824
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    # invokes: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->access$3000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;
    .locals 1

    .prologue
    .line 744
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->defaultInstance:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->iMSI_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->phone_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIMSI()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->hasIMSI:Z

    return v0
.end method

.method public hasPhone()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->hasPhone:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 754
    # getter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientSimInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    .locals 1

    .prologue
    .line 841
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    .locals 1

    .prologue
    .line 845
    invoke-static {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v0

    return-object v0
.end method
