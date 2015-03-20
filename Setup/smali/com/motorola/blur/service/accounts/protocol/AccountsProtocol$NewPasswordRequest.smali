.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewPasswordRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    }
.end annotation


# static fields
.field public static final CURRENTPASSWORD_FIELD_NUMBER:I = 0x2

.field public static final NEWPASSWORD_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;


# instance fields
.field private currentPassword_:Ljava/lang/String;

.field private hasCurrentPassword:Z

.field private hasNewPassword:Z

.field private hasVersion:Z

.field private newPassword_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    .line 269
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 270
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->initFields()V

    .line 271
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->version_:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->currentPassword_:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newPassword_:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->version_:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->currentPassword_:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newPassword_:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newPassword_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasVersion:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->version_:I

    return p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasCurrentPassword:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->currentPassword_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasNewPassword:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 128
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    .prologue
    .line 131
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    .line 98
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    .line 109
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->currentPassword_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newPassword_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->version_:I

    return v0
.end method

.method public hasCurrentPassword()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasCurrentPassword:Z

    return v0
.end method

.method public hasNewPassword()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasNewPassword:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method
