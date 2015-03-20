.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetEmailAndPasswordRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    }
.end annotation


# static fields
.field public static final CURRENTEMAIL_FIELD_NUMBER:I = 0x1

.field public static final NEWEMAIL_FIELD_NUMBER:I = 0x2

.field public static final NEWPASSWORD_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;


# instance fields
.field private currentEmail_:Ljava/lang/String;

.field private hasCurrentEmail:Z

.field private hasNewEmail:Z

.field private hasNewPassword:Z

.field private newEmail_:Ljava/lang/String;

.field private newPassword_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2954
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    .line 2955
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 2956
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->initFields()V

    .line 2957
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2697
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2724
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->currentEmail_:Ljava/lang/String;

    .line 2731
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newEmail_:Ljava/lang/String;

    .line 2738
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newPassword_:Ljava/lang/String;

    .line 2698
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->initFields()V

    .line 2699
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 2694
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2700
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2724
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->currentEmail_:Ljava/lang/String;

    .line 2731
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newEmail_:Ljava/lang/String;

    .line 2738
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newPassword_:Ljava/lang/String;

    .line 2700
    return-void
.end method

.method static synthetic access$10002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2694
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewPassword:Z

    return p1
.end method

.method static synthetic access$10102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newPassword_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2694
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasCurrentEmail:Z

    return p1
.end method

.method static synthetic access$9702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->currentEmail_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 2694
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewEmail:Z

    return p1
.end method

.method static synthetic access$9902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newEmail_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1

    .prologue
    .line 2704
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2713
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$9100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2743
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 2811
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    .prologue
    .line 2814
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2780
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    .line 2781
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2782
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v1

    .line 2784
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2791
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    .line 2792
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2793
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v1

    .line 2795
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2747
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2753
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2801
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2807
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2769
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2775
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2758
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2764
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->currentEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1

    .prologue
    .line 2708
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    return-object v0
.end method

.method public getNewEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newPassword_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCurrentEmail()Z
    .locals 1

    .prologue
    .line 2725
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasCurrentEmail:Z

    return v0
.end method

.method public hasNewEmail()Z
    .locals 1

    .prologue
    .line 2732
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewEmail:Z

    return v0
.end method

.method public hasNewPassword()Z
    .locals 1

    .prologue
    .line 2739
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewPassword:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2718
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$9200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 2812
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 2816
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method
