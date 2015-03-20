.class public final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PhotosProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 3

    .prologue
    .line 256
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;-><init>()V

    .line 257
    .local v0, "builder":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;-><init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .line 258
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    if-nez v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .line 312
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .line 313
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;-><init>(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    .line 271
    return-object p0
.end method

.method public clearPhotoId()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasPhotoId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$702(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 349
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->photoId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;I)I

    .line 350
    return-object p0
.end method

.method public clearProvider()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$1102(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 391
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getProvider()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->provider_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$1202(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public clearState()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasState:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 370
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->SUCCESS_COMPLETE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->state_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$1002(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 371
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 331
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$602(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;I)I

    .line 332
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->create()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

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
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->clone()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getDefaultInstance()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoId()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getPhotoId()I

    move-result v0

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getState()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasPhotoId()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasPhotoId()Z

    move-result v0

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasProvider()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasState()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setPhotoId(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasPhotoId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$702(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 344
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->photoId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$802(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;I)I

    .line 345
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$1102(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 386
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->provider_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$1202(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public setState(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasState:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$902(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 365
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->state_:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$1002(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 366
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$502(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;Z)Z

    .line 326
    iget-object v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$Builder;->result:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;

    # setter for: Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->access$602(Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;I)I

    .line 327
    return-object p0
.end method
