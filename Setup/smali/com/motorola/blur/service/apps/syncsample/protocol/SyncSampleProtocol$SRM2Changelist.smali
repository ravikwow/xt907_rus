.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SRM2Changelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    }
.end annotation


# static fields
.field public static final CHILD_CHANGES_FIELD_NUMBER:I = 0x2

.field public static final PARENT_CHANGES_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;


# instance fields
.field private childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

.field private hasChildChanges:Z

.field private hasParentChanges:Z

.field private parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1513
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .line 1514
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internalForceInit()V

    .line 1515
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->initFields()V

    .line 1516
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1251
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->initFields()V

    .line 1252
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$4502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 1247
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 1247
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1

    .prologue
    .line 1257
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1266
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_SRM2Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1289
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1290
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 1291
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 1

    .prologue
    .line 1359
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4300()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .prologue
    .line 1362
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    .line 1329
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v1

    .line 1332
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    .line 1340
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v1

    .line 1343
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1349
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1317
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1306
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1312
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChildChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1

    .prologue
    .line 1261
    sget-object v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    return-object v0
.end method

.method public getParentChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    return-object v0
.end method

.method public hasChildChanges()Z
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges:Z

    return v0
.end method

.method public hasParentChanges()Z
    .locals 1

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1271
    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->internal_static_SRM2Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol;->access$4100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 1

    .prologue
    .line 1360
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 1

    .prologue
    .line 1364
    invoke-static {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method
