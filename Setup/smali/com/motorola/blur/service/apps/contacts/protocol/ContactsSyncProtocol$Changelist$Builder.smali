.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;-><init>()V

    .line 155
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .line 156
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .line 210
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .line 211
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    .line 169
    return-object p0
.end method

.method public clearGroupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 248
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .line 249
    return-object p0
.end method

.method public clearGroupFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 359
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 360
    return-object p0
.end method

.method public clearIdentityFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 322
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 323
    return-object p0
.end method

.method public clearPersonChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 285
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 286
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

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
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getGroupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getGroupFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getGroupFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getIdentityFixupChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getPersonChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->getPersonChanges()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public hasGroupChanges()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges()Z

    move-result v0

    return v0
.end method

.method public hasGroupFixupChanges()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges()Z

    move-result v0

    return v0
.end method

.method public hasIdentityFixupChanges()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges()Z

    move-result v0

    return v0
.end method

.method public hasPersonChanges()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeGroupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 244
    return-object p0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    goto :goto_0
.end method

.method public mergeGroupFixupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 355
    return-object p0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    goto :goto_0
.end method

.method public mergeIdentityFixupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 318
    return-object p0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    goto :goto_0
.end method

.method public mergePersonChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->newBuilder(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 281
    return-object p0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    goto :goto_0
.end method

.method public setGroupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 232
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .line 233
    return-object p0
.end method

.method public setGroupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 227
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupChanges;

    .line 228
    return-object p0
.end method

.method public setGroupFixupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 343
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 344
    return-object p0
.end method

.method public setGroupFixupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasGroupFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 338
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->groupFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 339
    return-object p0
.end method

.method public setIdentityFixupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 306
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 307
    return-object p0
.end method

.method public setIdentityFixupChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasIdentityFixupChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 301
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->identityFixupChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$1002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 302
    return-object p0
.end method

.method public setPersonChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 269
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 270
    return-object p0
.end method

.method public setPersonChanges(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->hasPersonChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Z)Z

    .line 264
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->personChanges_:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;->access$802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Changelist;Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 265
    return-object p0
.end method
