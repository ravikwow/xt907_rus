.class final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;
.super Ljava/lang/Object;
.source "SessionsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2018
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

    .line 2021
    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$7702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2022
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2024
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "U"

    aput-object v3, v2, v6

    const-string v3, "A"

    aput-object v3, v2, v7

    const-string v3, "SessionInfo"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const-class v4, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2030
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2032
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Error"

    aput-object v3, v2, v6

    const-string v3, "S"

    aput-object v3, v2, v7

    const-string v3, "B"

    aput-object v3, v2, v8

    const-string v3, "Context"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SavedLogin"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const-class v4, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2038
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$3002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2040
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "M"

    aput-object v3, v2, v6

    const-string v3, "DeviceInfo"

    aput-object v3, v2, v7

    const-string v3, "Context"

    aput-object v3, v2, v8

    const-string v3, "UserLogin"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SessionInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "CaptchaInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ConfigId"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const-class v4, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$3102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2046
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2048
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Error"

    aput-object v3, v2, v6

    const-string v3, "M"

    aput-object v3, v2, v7

    const-string v3, "Data"

    aput-object v3, v2, v8

    const-string v3, "CaptchaInfo"

    aput-object v3, v2, v9

    const-class v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const-class v4, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2054
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2056
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AccountInfo"

    aput-object v3, v2, v5

    const-string v3, "DeviceInfo"

    aput-object v3, v2, v6

    const-string v3, "SessionInfo"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const-class v4, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2062
    const/4 v0, 0x0

    return-object v0
.end method
