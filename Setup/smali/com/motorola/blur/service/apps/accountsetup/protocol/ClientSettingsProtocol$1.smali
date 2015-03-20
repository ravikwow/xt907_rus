.class final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;
.super Ljava/lang/Object;
.source "ClientSettingsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4751
    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$18202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4752
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4754
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Providers"

    aput-object v3, v2, v5

    const-string v3, "Services"

    aput-object v3, v2, v6

    const-string v3, "ActiveServices"

    aput-object v3, v2, v7

    const-string v3, "Accounts"

    aput-object v3, v2, v8

    const-string v3, "AppSettings"

    aput-object v3, v2, v9

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Changelist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Changelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4760
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ProvidersChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$1502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4762
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ProvidersChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$1500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Adds"

    aput-object v3, v2, v5

    const-string v3, "Mods"

    aput-object v3, v2, v6

    const-string v3, "Deletions"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ProvidersChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$1602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4768
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$2302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4770
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SyncId"

    aput-object v3, v2, v5

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "Provider"

    aput-object v3, v2, v8

    const-string v3, "PrettyName"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Path"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "UiOrder"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "LoginLabel"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "MultipleAccounts"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "FallbackUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ProviderUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "PwdStoragePolicy"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Providers_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$2402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4776
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$5202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4778
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$5200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Adds"

    aput-object v3, v2, v5

    const-string v3, "Mods"

    aput-object v3, v2, v6

    const-string v3, "Deletions"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$5302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4784
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Services_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$6002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4786
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Services_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SyncId"

    aput-object v3, v2, v5

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "ProvidersId"

    aput-object v3, v2, v8

    const-string v3, "Capability"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ServerAddress"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ServerPort"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Secure"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Path"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PrettyName"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "AuthType"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Settings"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "EmailPattern"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "LoginReplacement"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Services_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$6102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4792
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$9302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4794
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServicesChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$9300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Adds"

    aput-object v3, v2, v5

    const-string v3, "Mods"

    aput-object v3, v2, v6

    const-string v3, "Deletions"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServicesChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$9402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4800
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$10102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4802
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$10100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SyncId"

    aput-object v3, v2, v5

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "ServiceId"

    aput-object v3, v2, v8

    const-string v3, "Error"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Account"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Username"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Password"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "MaxSize"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PollingInterval"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "RetentionPolicy"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "VerifyCa"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "SecurityPolicy"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_ActiveServices_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$10202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4808
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AccountsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$13202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4810
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AccountsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$13200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Adds"

    aput-object v3, v2, v5

    const-string v3, "Mods"

    aput-object v3, v2, v6

    const-string v3, "Deletions"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AccountsChanges$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AccountsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$13302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4816
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$14002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4818
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$14000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SyncId"

    aput-object v3, v2, v5

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "ProviderId"

    aput-object v3, v2, v8

    const-string v3, "EmailAddress"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "UserPrettyName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "AccountPrettyName"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Extra"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Accounts$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_Accounts_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$14102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4824
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$16102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4826
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettingsChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$16100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Adds"

    aput-object v3, v2, v5

    const-string v3, "Mods"

    aput-object v3, v2, v6

    const-string v3, "Deletions"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettingsChanges$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettingsChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$16202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4832
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$16902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4834
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettings_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$16900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "SyncId"

    aput-object v3, v2, v5

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v6

    const-string v3, "Name"

    aput-object v3, v2, v7

    const-string v3, "Value"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings;

    const-class v4, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$AppSettings$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->internal_static_AppSettings_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol;->access$17002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4840
    const/4 v0, 0x0

    return-object v0
.end method
