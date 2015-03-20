.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Changelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_FIELD_NUMBER:I = 0x4

.field public static final ACTIVE_SERVICES_FIELD_NUMBER:I = 0x3

.field public static final APP_SETTINGS_FIELD_NUMBER:I = 0x5

.field public static final PROVIDERS_FIELD_NUMBER:I = 0x1

.field public static final SERVICES_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;


# instance fields
.field private accounts_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

.field private activeServices_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

.field private appSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

.field private hasAccounts:Z

.field private hasActiveServices:Z

.field private hasAppSettings:Z

.field private hasProviders:Z

.field private hasServices:Z

.field private providers_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

.field private services_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    .line 413
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internalForceInit()V

    .line 414
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->initFields()V

    .line 415
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;-><init>()V

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

.method static synthetic access$1000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->activeServices_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->activeServices_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasAccounts:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->accounts_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->accounts_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasAppSettings:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->appSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->appSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasProviders:Z

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->providers_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->providers_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasServices:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->services_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->services_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasActiveServices:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->providers_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    .line 75
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->services_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .line 76
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->activeServices_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    .line 77
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->accounts_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

    .line 78
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->appSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    .line 79
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 147
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$300()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    .prologue
    .line 150
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    .line 117
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    # invokes: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;->access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccounts()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->accounts_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

    return-object v0
.end method

.method public getActiveServices()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->activeServices_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    return-object v0
.end method

.method public getAppSettings()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->appSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->defaultInstance:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    return-object v0
.end method

.method public getProviders()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->providers_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    return-object v0
.end method

.method public getServices()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->services_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    return-object v0
.end method

.method public hasAccounts()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasAccounts:Z

    return v0
.end method

.method public hasActiveServices()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasActiveServices:Z

    return v0
.end method

.method public hasAppSettings()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasAppSettings:Z

    return v0
.end method

.method public hasProviders()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasProviders:Z

    return v0
.end method

.method public hasServices()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->hasServices:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method
