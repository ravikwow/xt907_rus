.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 3

    .prologue
    .line 1135
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;-><init>()V

    .line 1136
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .line 1137
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 3

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    if-nez v1, :cond_0

    .line 1187
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .line 1191
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .line 1192
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    if-nez v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .line 1150
    return-object p0
.end method

.method public clearLabel()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Z)Z

    .line 1213
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getLabel()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->label_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    return-object p0
.end method

.method public clearSize()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1230
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasSize:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Z)Z

    .line 1231
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->size_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;I)I

    .line 1232
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 2

    .prologue
    .line 1154
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

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
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1

    .prologue
    .line 1163
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1159
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->getSize()I

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasLabel()Z

    move-result v0

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasSize()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1204
    if-nez p1, :cond_0

    .line 1205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Z)Z

    .line 1208
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->label_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Ljava/lang/String;)Ljava/lang/String;

    .line 1209
    return-object p0
.end method

.method public setSize(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->hasSize:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;Z)Z

    .line 1226
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->size_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;->access$3902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;I)I

    .line 1227
    return-object p0
.end method
