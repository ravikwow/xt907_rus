.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ServerNameValueSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Changelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    }
.end annotation


# static fields
.field public static final SERVER_SETTINGS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;


# instance fields
.field private hasServerSettings:Z

.field private serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    .line 233
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internalForceInit()V

    .line 234
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->initFields()V

    .line 235
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .line 47
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 115
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$300()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    .prologue
    .line 118
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    .line 85
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    .line 96
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    return-object v0
.end method

.method public getServerSettings()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    return-object v0
.end method

.method public hasServerSettings()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method
