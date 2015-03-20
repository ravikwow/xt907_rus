.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1216
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 3

    .prologue
    .line 1219
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;-><init>()V

    .line 1220
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    .line 1221
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 3

    .prologue
    .line 1270
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    if-nez v1, :cond_0

    .line 1271
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    .line 1275
    .local v0, "returnMe":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    .line 1276
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    if-nez v0, :cond_0

    .line 1230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    .line 1234
    return-object p0
.end method

.method public clearCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z

    .line 1334
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1335
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z

    .line 1297
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    .line 1298
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2

    .prologue
    .line 1238
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1

    .prologue
    .line 1247
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1243
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasCloud()Z
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4300(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4300(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1329
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z

    .line 1330
    return-object p0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    goto :goto_0
.end method

.method public setCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z

    .line 1318
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1319
    return-object p0
.end method

.method public setCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 1309
    if-nez p1, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z

    .line 1313
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1314
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    .prologue
    .line 1288
    if-nez p1, :cond_0

    .line 1289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Z)Z

    .line 1292
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;->access$4102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse$Error;

    .line 1293
    return-object p0
.end method
