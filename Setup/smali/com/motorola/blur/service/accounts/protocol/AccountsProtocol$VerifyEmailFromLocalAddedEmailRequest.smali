.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerifyEmailFromLocalAddedEmailRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    }
.end annotation


# static fields
.field public static final LOCALADDEDEMAIL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;


# instance fields
.field private hasLocalAddedEmail:Z

.field private localAddedEmail_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3450
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    .line 3451
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 3452
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->initFields()V

    .line 3453
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3276
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->localAddedEmail_:Ljava/lang/String;

    .line 3250
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->initFields()V

    .line 3251
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 3246
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 3252
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3276
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->localAddedEmail_:Ljava/lang/String;

    .line 3252
    return-void
.end method

.method static synthetic access$11402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 3246
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->hasLocalAddedEmail:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3246
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->localAddedEmail_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1

    .prologue
    .line 3256
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3265
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$10900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 3281
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    .locals 1

    .prologue
    .line 3349
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11200()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    .prologue
    .line 3352
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3318
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    .line 3319
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3320
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v1

    .line 3322
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3329
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    .line 3330
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3331
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v1

    .line 3333
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3285
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3291
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3339
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3345
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3307
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3313
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3296
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3302
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->access$11100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;
    .locals 1

    .prologue
    .line 3260
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    return-object v0
.end method

.method public getLocalAddedEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->localAddedEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocalAddedEmail()Z
    .locals 1

    .prologue
    .line 3277
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->hasLocalAddedEmail:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3270
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$11000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    .locals 1

    .prologue
    .line 3350
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    .locals 1

    .prologue
    .line 3354
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method
