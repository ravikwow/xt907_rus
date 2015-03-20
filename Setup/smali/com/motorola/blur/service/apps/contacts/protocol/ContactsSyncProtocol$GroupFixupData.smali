.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupFixupData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    }
.end annotation


# static fields
.field public static final GROUP_EMAIL_FIELD_NUMBER:I = 0x3

.field public static final GROUP_NAME_FIELD_NUMBER:I = 0x8

.field public static final GROUP_PHONE_FIELD_NUMBER:I = 0x2

.field public static final GROUP_SERVICE_FIELD_NUMBER:I = 0x7

.field public static final SELECT_EMAIL_FIELD_NUMBER:I = 0x5

.field public static final SELECT_PHONE_FIELD_NUMBER:I = 0x4

.field public static final SERVICE_ID_FIELD_NUMBER:I = 0x1

.field public static final SERVICE_NAME_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;


# instance fields
.field private groupEmail_:Ljava/lang/String;

.field private groupName_:Ljava/lang/String;

.field private groupPhone_:Ljava/lang/String;

.field private groupService_:Ljava/lang/String;

.field private hasGroupEmail:Z

.field private hasGroupName:Z

.field private hasGroupPhone:Z

.field private hasGroupService:Z

.field private hasSelectEmail:Z

.field private hasSelectPhone:Z

.field private hasServiceId:Z

.field private hasServiceName:Z

.field private selectEmail_:I

.field private selectPhone_:I

.field private serviceId_:Ljava/lang/String;

.field private serviceName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4874
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    .line 4875
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internalForceInit()V

    .line 4876
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->initFields()V

    .line 4877
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4483
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4510
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceId_:Ljava/lang/String;

    .line 4517
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupPhone_:Ljava/lang/String;

    .line 4524
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupEmail_:Ljava/lang/String;

    .line 4531
    iput v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectPhone_:I

    .line 4538
    iput v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectEmail_:I

    .line 4545
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceName_:Ljava/lang/String;

    .line 4552
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupService_:Ljava/lang/String;

    .line 4559
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupName_:Ljava/lang/String;

    .line 4484
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->initFields()V

    .line 4485
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    .prologue
    .line 4480
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4486
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4510
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceId_:Ljava/lang/String;

    .line 4517
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupPhone_:Ljava/lang/String;

    .line 4524
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupEmail_:Ljava/lang/String;

    .line 4531
    iput v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectPhone_:I

    .line 4538
    iput v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectEmail_:I

    .line 4545
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceName_:Ljava/lang/String;

    .line 4552
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupService_:Ljava/lang/String;

    .line 4559
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupName_:Ljava/lang/String;

    .line 4486
    return-void
.end method

.method static synthetic access$15802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasServiceId:Z

    return p1
.end method

.method static synthetic access$15902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4480
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupPhone:Z

    return p1
.end method

.method static synthetic access$16102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4480
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupPhone_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupEmail:Z

    return p1
.end method

.method static synthetic access$16302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4480
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupEmail_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasSelectPhone:Z

    return p1
.end method

.method static synthetic access$16502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # I

    .prologue
    .line 4480
    iput p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectPhone_:I

    return p1
.end method

.method static synthetic access$16602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasSelectEmail:Z

    return p1
.end method

.method static synthetic access$16702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # I

    .prologue
    .line 4480
    iput p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectEmail_:I

    return p1
.end method

.method static synthetic access$16802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasServiceName:Z

    return p1
.end method

.method static synthetic access$16902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4480
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupService:Z

    return p1
.end method

.method static synthetic access$17102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4480
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupService_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Z

    .prologue
    .line 4480
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupName:Z

    return p1
.end method

.method static synthetic access$17302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4480
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupName_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1

    .prologue
    .line 4490
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4499
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$15300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4564
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    .locals 1

    .prologue
    .line 4632
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15600()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    .prologue
    .line 4635
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4601
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    .line 4602
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4603
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v1

    .line 4605
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4612
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    .line 4613
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4614
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v1

    .line 4616
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4568
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4574
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4622
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4628
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4590
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4596
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4579
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4585
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;->access$15500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4480
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4480
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;
    .locals 1

    .prologue
    .line 4494
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;

    return-object v0
.end method

.method public getGroupEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4526
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4519
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupPhone_:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4554
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->groupService_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectEmail()I
    .locals 1

    .prologue
    .line 4540
    iget v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectEmail_:I

    return v0
.end method

.method public getSelectPhone()I
    .locals 1

    .prologue
    .line 4533
    iget v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->selectPhone_:I

    return v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4547
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->serviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasGroupEmail()Z
    .locals 1

    .prologue
    .line 4525
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupEmail:Z

    return v0
.end method

.method public hasGroupName()Z
    .locals 1

    .prologue
    .line 4560
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupName:Z

    return v0
.end method

.method public hasGroupPhone()Z
    .locals 1

    .prologue
    .line 4518
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupPhone:Z

    return v0
.end method

.method public hasGroupService()Z
    .locals 1

    .prologue
    .line 4553
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasGroupService:Z

    return v0
.end method

.method public hasSelectEmail()Z
    .locals 1

    .prologue
    .line 4539
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasSelectEmail:Z

    return v0
.end method

.method public hasSelectPhone()Z
    .locals 1

    .prologue
    .line 4532
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasSelectPhone:Z

    return v0
.end method

.method public hasServiceId()Z
    .locals 1

    .prologue
    .line 4511
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasServiceId:Z

    return v0
.end method

.method public hasServiceName()Z
    .locals 1

    .prologue
    .line 4546
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->hasServiceName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4504
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_GroupFixupData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$15400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4480
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4480
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    .locals 1

    .prologue
    .line 4633
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4480
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4480
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;
    .locals 1

    .prologue
    .line 4637
    invoke-static {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupData$Builder;

    move-result-object v0

    return-object v0
.end method
