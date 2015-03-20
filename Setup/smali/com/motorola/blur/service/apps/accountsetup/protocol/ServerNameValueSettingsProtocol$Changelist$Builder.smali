.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServerNameValueSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;-><init>()V

    .line 131
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    .line 132
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    .line 186
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    .line 187
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    .line 145
    return-object p0
.end method

.method public clearServerSettings()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Z)Z

    .line 224
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .line 225
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

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
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getServerSettings()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->getServerSettings()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v0

    return-object v0
.end method

.method public hasServerSettings()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeServerSettings(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$600(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;->newBuilder(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Z)Z

    .line 220
    return-object p0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    goto :goto_0
.end method

.method public setServerSettings(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Z)Z

    .line 208
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .line 209
    return-object p0
.end method

.method public setServerSettings(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->hasServerSettings:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Z)Z

    .line 203
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->serverSettings_:Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;->access$602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$Changelist;Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ServerNameValueSettingsProtocol$ServerNameValueSettingsChanges;

    .line 204
    return-object p0
.end method
