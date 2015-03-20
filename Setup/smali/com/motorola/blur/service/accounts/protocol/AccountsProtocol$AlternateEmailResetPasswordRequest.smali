.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateEmailResetPasswordRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    }
.end annotation


# static fields
.field public static final ALTERNATEEMAIL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;


# instance fields
.field private alternateEmail_:Ljava/lang/String;

.field private hasAlternateEmail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1642
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    .line 1643
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 1644
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->initFields()V

    .line 1645
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1441
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1468
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->alternateEmail_:Ljava/lang/String;

    .line 1442
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->initFields()V

    .line 1443
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 1438
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1468
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->alternateEmail_:Ljava/lang/String;

    .line 1444
    return-void
.end method

.method static synthetic access$5202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 1438
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->hasAlternateEmail:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->alternateEmail_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1

    .prologue
    .line 1448
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1457
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AlternateEmailResetPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1473
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 1541
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$5000()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    .prologue
    .line 1544
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1510
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    .line 1511
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v1

    .line 1514
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    .line 1522
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v1

    .line 1525
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1499
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1505
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1488
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;->access$4900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlternateEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->alternateEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;
    .locals 1

    .prologue
    .line 1452
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;

    return-object v0
.end method

.method public hasAlternateEmail()Z
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->hasAlternateEmail:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1462
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AlternateEmailResetPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 1542
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 1546
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method
