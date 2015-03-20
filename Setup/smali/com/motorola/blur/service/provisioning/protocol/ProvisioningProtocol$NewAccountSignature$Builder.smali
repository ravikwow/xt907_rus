.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3084
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3079
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12100()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3130
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3134
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 3

    .prologue
    .line 3087
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;-><init>()V

    .line 3088
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    new-instance v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 3089
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3125
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 3

    .prologue
    .line 3138
    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    if-nez v1, :cond_0

    .line 3139
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3142
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 3143
    .local v0, "returnMe":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 3144
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    if-nez v0, :cond_0

    .line 3098
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3101
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 3102
    return-object p0
.end method

.method public clearCloudid()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3203
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasCloudid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12702(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z

    .line 3204
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->cloudid_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12802(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;I)I

    .line 3205
    return-object p0
.end method

.method public clearContext()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z

    .line 3186
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getContext()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->context_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 3187
    return-object p0
.end method

.method public clearSignature()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z

    .line 3165
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getSignature()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->signature_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 3166
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2

    .prologue
    .line 3106
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

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
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloudid()I
    .locals 1

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getCloudid()I

    move-result v0

    return v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 3115
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3111
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCloudid()Z
    .locals 1

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasCloudid()Z

    move-result v0

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasContext()Z

    move-result v0

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasSignature()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCloudid(I)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasCloudid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12702(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z

    .line 3199
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->cloudid_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12802(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;I)I

    .line 3200
    return-object p0
.end method

.method public setContext(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3177
    if-nez p1, :cond_0

    .line 3178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3180
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z

    .line 3181
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->context_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 3182
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3156
    if-nez p1, :cond_0

    .line 3157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3159
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Z)Z

    .line 3160
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->signature_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->access$12402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 3161
    return-object p0
.end method
