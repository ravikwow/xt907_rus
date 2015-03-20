.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetDoneMarker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    }
.end annotation


# static fields
.field public static final PROVIDER_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;


# instance fields
.field private hasProvider:Z

.field private provider_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1376
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .line 1377
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internalForceInit()V

    .line 1378
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->initFields()V

    .line 1379
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1202
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->provider_:Ljava/lang/String;

    .line 1176
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->initFields()V

    .line 1177
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1202
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->provider_:Ljava/lang/String;

    .line 1178
    return-void
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .param p1, "x1"    # Z

    .prologue
    .line 1172
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->hasProvider:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->provider_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1

    .prologue
    .line 1182
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1191
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ResetDoneMarker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1207
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 1

    .prologue
    .line 1275
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3700()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .prologue
    .line 1278
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    .line 1245
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v1

    .line 1248
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    .line 1256
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v1

    .line 1259
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1217
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1228
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    # invokes: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1

    .prologue
    .line 1186
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->defaultInstance:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->provider_:Ljava/lang/String;

    return-object v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->hasProvider:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1196
    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->internal_static_ResetDoneMarker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->access$3500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 1

    .prologue
    .line 1276
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 1

    .prologue
    .line 1280
    invoke-static {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method
