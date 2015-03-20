.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;,
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;
    }
.end annotation


# static fields
.field public static final AUXDATA_FIELD_NUMBER:I = 0x6

.field public static final DATA_FIELD_NUMBER:I = 0x3

.field public static final IS_PRIMARY_EMAIL_FIELD_NUMBER:I = 0x5

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;


# instance fields
.field private auxdata_:Ljava/lang/String;

.field private data_:Ljava/lang/String;

.field private hasAuxdata:Z

.field private hasData:Z

.field private hasIsPrimaryEmail:Z

.field private hasKind:Z

.field private hasLabel:Z

.field private hasType:Z

.field private isPrimaryEmail_:Z

.field private kind_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;

.field private label_:Ljava/lang/String;

.field private type_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6011
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    .line 6012
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internalForceInit()V

    .line 6013
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->initFields()V

    .line 6014
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5523
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5712
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->data_:Ljava/lang/String;

    .line 5719
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->label_:Ljava/lang/String;

    .line 5726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->isPrimaryEmail_:Z

    .line 5733
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->auxdata_:Ljava/lang/String;

    .line 5524
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->initFields()V

    .line 5525
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    .prologue
    .line 5520
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 5526
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5712
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->data_:Ljava/lang/String;

    .line 5719
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->label_:Ljava/lang/String;

    .line 5726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->isPrimaryEmail_:Z

    .line 5733
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->auxdata_:Ljava/lang/String;

    .line 5526
    return-void
.end method

.method static synthetic access$20302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Z

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasKind:Z

    return p1
.end method

.method static synthetic access$20402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;

    .prologue
    .line 5520
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->kind_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;

    return-object p1
.end method

.method static synthetic access$20502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Z

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasType:Z

    return p1
.end method

.method static synthetic access$20602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;

    .prologue
    .line 5520
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->type_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;

    return-object p1
.end method

.method static synthetic access$20702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Z

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasData:Z

    return p1
.end method

.method static synthetic access$20802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5520
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->data_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Z

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasLabel:Z

    return p1
.end method

.method static synthetic access$21002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5520
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->label_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Z

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasIsPrimaryEmail:Z

    return p1
.end method

.method static synthetic access$21202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Z

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->isPrimaryEmail_:Z

    return p1
.end method

.method static synthetic access$21302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Z

    .prologue
    .line 5520
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasAuxdata:Z

    return p1
.end method

.method static synthetic access$21402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5520
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->auxdata_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1

    .prologue
    .line 5530
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5539
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ContactMethod_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$19800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5738
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;->EMAIL:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->kind_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;

    .line 5739
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;->CUSTOM:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->type_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;

    .line 5740
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;
    .locals 1

    .prologue
    .line 5808
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20100()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    .prologue
    .line 5811
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5777
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    .line 5778
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5779
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v1

    .line 5781
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5788
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    .line 5789
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5790
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v1

    .line 5792
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5744
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5750
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5798
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5804
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5766
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5772
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5755
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5761
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;->access$20000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuxdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5735
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->auxdata_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5520
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5520
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;
    .locals 1

    .prologue
    .line 5534
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;

    return-object v0
.end method

.method public getIsPrimaryEmail()Z
    .locals 1

    .prologue
    .line 5728
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->isPrimaryEmail_:Z

    return v0
.end method

.method public getKind()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;
    .locals 1

    .prologue
    .line 5700
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->kind_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Kind;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5721
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;
    .locals 1

    .prologue
    .line 5707
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->type_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Type;

    return-object v0
.end method

.method public hasAuxdata()Z
    .locals 1

    .prologue
    .line 5734
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasAuxdata:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 5713
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasData:Z

    return v0
.end method

.method public hasIsPrimaryEmail()Z
    .locals 1

    .prologue
    .line 5727
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasIsPrimaryEmail:Z

    return v0
.end method

.method public hasKind()Z
    .locals 1

    .prologue
    .line 5699
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasKind:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 5720
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasLabel:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 5706
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5544
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_ContactMethod_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$19900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5520
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5520
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;
    .locals 1

    .prologue
    .line 5809
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5520
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5520
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;
    .locals 1

    .prologue
    .line 5813
    invoke-static {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$ContactMethod$Builder;

    move-result-object v0

    return-object v0
.end method
