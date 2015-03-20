.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupFixup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field public static final MODIFY_SET_FIELDS_ONLY_FIELD_NUMBER:I = 0x4

.field public static final SYNC_ANCHOR_FIELD_NUMBER:I = 0x3

.field public static final SYNC_ID_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;


# instance fields
.field private data_:Ljava/lang/String;

.field private hasData:Z

.field private hasModifySetFieldsOnly:Z

.field private hasSyncAnchor:Z

.field private hasSyncId:Z

.field private modifySetFieldsOnly_:Z

.field private syncAnchor_:Ljava/lang/String;

.field private syncId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4472
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .line 4473
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internalForceInit()V

    .line 4474
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->initFields()V

    .line 4475
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4190
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4217
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->data_:Ljava/lang/String;

    .line 4224
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncId_:Ljava/lang/String;

    .line 4231
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncAnchor_:Ljava/lang/String;

    .line 4238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->modifySetFieldsOnly_:Z

    .line 4191
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->initFields()V

    .line 4192
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    .prologue
    .line 4187
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 4193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4217
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->data_:Ljava/lang/String;

    .line 4224
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncId_:Ljava/lang/String;

    .line 4231
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncAnchor_:Ljava/lang/String;

    .line 4238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->modifySetFieldsOnly_:Z

    .line 4193
    return-void
.end method

.method static synthetic access$14502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Z

    .prologue
    .line 4187
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasData:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4187
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->data_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Z

    .prologue
    .line 4187
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncId:Z

    return p1
.end method

.method static synthetic access$14802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4187
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Z

    .prologue
    .line 4187
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncAnchor:Z

    return p1
.end method

.method static synthetic access$15002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4187
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncAnchor_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Z

    .prologue
    .line 4187
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasModifySetFieldsOnly:Z

    return p1
.end method

.method static synthetic access$15202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .param p1, "x1"    # Z

    .prologue
    .line 4187
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->modifySetFieldsOnly_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1

    .prologue
    .line 4197
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4206
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixup_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$14000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4243
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 1

    .prologue
    .line 4311
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14300()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .prologue
    .line 4314
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4280
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    .line 4281
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4282
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    .line 4284
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4291
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    .line 4292
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4293
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    .line 4295
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4247
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4253
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4301
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4307
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4269
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4275
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4258
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4264
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4219
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1

    .prologue
    .line 4201
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    return-object v0
.end method

.method public getModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 4240
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->modifySetFieldsOnly_:Z

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncAnchor_:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4226
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 4218
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasData:Z

    return v0
.end method

.method public hasModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 4239
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasModifySetFieldsOnly:Z

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 4232
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncAnchor:Z

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 4225
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4211
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixup_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$14100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 1

    .prologue
    .line 4312
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 1

    .prologue
    .line 4316
    invoke-static {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method
