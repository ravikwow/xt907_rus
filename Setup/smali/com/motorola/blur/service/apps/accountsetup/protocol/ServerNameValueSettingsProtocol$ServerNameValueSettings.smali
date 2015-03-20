.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ServerNameValueSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerNameValueSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x2

.field public static final SYNC_ID_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;


# instance fields
.field private hasName:Z

.field private hasSyncAnchor:Z

.field private hasSyncId:Z

.field private hasValue:Z

.field private name_:Ljava/lang/String;

.field private syncAnchor_:Ljava/lang/String;

.field private syncId_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    .line 914
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internalForceInit()V

    .line 915
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->initFields()V

    .line 916
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 655
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncId_:Ljava/lang/String;

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncAnchor_:Ljava/lang/String;

    .line 669
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->name_:Ljava/lang/String;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->value_:Ljava/lang/String;

    .line 629
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->initFields()V

    .line 630
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 655
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncId_:Ljava/lang/String;

    .line 662
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncAnchor_:Ljava/lang/String;

    .line 669
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->name_:Ljava/lang/String;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->value_:Ljava/lang/String;

    .line 631
    return-void
.end method

.method static synthetic access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncId:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasName:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasValue:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->value_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1

    .prologue
    .line 635
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 644
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->access$1500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 1

    .prologue
    .line 749
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1800()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    .prologue
    .line 752
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    .line 719
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v1

    .line 722
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    .line 730
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v1

    .line 733
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;->access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->syncId_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasName:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasSyncId:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->hasValue:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 649
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->internal_static_ServerNameValueSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol;->access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 1

    .prologue
    .line 750
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;
    .locals 1

    .prologue
    .line 754
    invoke-static {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettings$Builder;

    move-result-object v0

    return-object v0
.end method
