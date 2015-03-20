.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10600(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2663
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2714
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2715
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2718
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 3

    .prologue
    .line 2671
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;-><init>()V

    .line 2672
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    .line 2673
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2707
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2709
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 3

    .prologue
    .line 2722
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    if-nez v1, :cond_0

    .line 2723
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2726
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    .line 2727
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    .line 2728
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    if-nez v0, :cond_0

    .line 2682
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2685
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    .line 2686
    return-object p0
.end method

.method public clearReauth()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2787
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasReauth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2788
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->reauth_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2789
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$10902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2749
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2750
    return-object p0
.end method

.method public clearUrl()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2770
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->url_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2771
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2

    .prologue
    .line 2690
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

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
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1

    .prologue
    .line 2699
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2695
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getReauth()Z
    .locals 1

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getReauth()Z

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasReauth()Z
    .locals 1

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasReauth()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasUrl()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;
    .locals 1

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setReauth(Z)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasReauth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2783
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->reauth_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2784
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2740
    if-nez p1, :cond_0

    .line 2741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2743
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$10902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2744
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2745
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2761
    if-nez p1, :cond_0

    .line 2762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2764
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Z)Z

    .line 2765
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->url_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;->access$11202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2766
    return-object p0
.end method
