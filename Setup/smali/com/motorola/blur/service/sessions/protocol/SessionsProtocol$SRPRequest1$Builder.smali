.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;-><init>()V

    .line 152
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    new-instance v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    .line 153
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    .line 207
    .local v0, "returnMe":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    .line 208
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    .line 166
    return-object p0
.end method

.method public clearA()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasA:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 268
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getA()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->a_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public clearSessionInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 305
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 306
    return-object p0
.end method

.method public clearU()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasU:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 247
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getU()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->u_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 226
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;I)I

    .line 227
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

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
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasA()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasA()Z

    move-result v0

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo()Z

    move-result v0

    return v0
.end method

.method public hasU()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasU()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 301
    return-object p0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    goto :goto_0
.end method

.method public setA(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasA:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 263
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->a_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 289
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 290
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 284
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$1202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 285
    return-object p0
.end method

.method public setU(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasU:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 242
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->u_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z

    .line 221
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->access$602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;I)I

    .line 222
    return-object p0
.end method
