.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Changelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    }
.end annotation


# static fields
.field public static final GROUP_CHANGES_FIELD_NUMBER:I = 0x1

.field public static final GROUP_FIXUP_CHANGES_FIELD_NUMBER:I = 0x4

.field public static final IDENTITY_FIXUP_CHANGES_FIELD_NUMBER:I = 0x3

.field public static final PERSON_CHANGES_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;


# instance fields
.field private groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

.field private groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

.field private hasGroupChanges:Z

.field private hasGroupFixupChanges:Z

.field private hasIdentityFixupChanges:Z

.field private hasPersonChanges:Z

.field private identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

.field private personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .line 368
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internalForceInit()V

    .line 369
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->initFields()V

    .line 370
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .line 68
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 69
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 70
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 71
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 139
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$300()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .prologue
    .line 142
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    .line 109
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    .line 120
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    return-object v0
.end method

.method public getGroupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    return-object v0
.end method

.method public getGroupFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    return-object v0
.end method

.method public getIdentityFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    return-object v0
.end method

.method public getPersonChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    return-object v0
.end method

.method public hasGroupChanges()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges:Z

    return v0
.end method

.method public hasGroupFixupChanges()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges:Z

    return v0
.end method

.method public hasIdentityFixupChanges()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges:Z

    return v0
.end method

.method public hasPersonChanges()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-static {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method
