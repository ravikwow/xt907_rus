.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 3

    .prologue
    .line 554
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;-><init>()V

    .line 555
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    new-instance v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    .line 556
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 3

    .prologue
    .line 605
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    if-nez v1, :cond_0

    .line 606
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    .line 610
    .local v0, "returnMe":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    .line 611
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    .line 569
    return-object p0
.end method

.method public clearB()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasB:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 692
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getB()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->b_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;

    .line 693
    return-object p0
.end method

.method public clearContext()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 710
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->context_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;J)J

    .line 711
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 650
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->WRONG_LOGIN:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    .line 651
    return-object p0
.end method

.method public clearS()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasS:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 671
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getS()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->s_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    return-object p0
.end method

.method public clearSavedLogin()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasSavedLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 731
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getSavedLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->savedLogin_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;

    .line 732
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$1802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 629
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$1902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;I)I

    .line 630
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2

    .prologue
    .line 573
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

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
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    move-result-object v0

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavedLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getSavedLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasB()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasB()Z

    move-result v0

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasContext()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasS()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasS()Z

    move-result v0

    return v0
.end method

.method public hasSavedLogin()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasSavedLogin()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setB(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 683
    if-nez p1, :cond_0

    .line 684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasB:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 687
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->b_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    return-object p0
.end method

.method public setContext(J)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 704
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 705
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->context_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;J)J

    .line 706
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 645
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    .line 646
    return-object p0
.end method

.method public setS(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasS:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 666
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->s_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;

    .line 667
    return-object p0
.end method

.method public setSavedLogin(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 722
    if-nez p1, :cond_0

    .line 723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasSavedLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 726
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->savedLogin_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$2902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$1802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;Z)Z

    .line 624
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->access$1902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;I)I

    .line 625
    return-object p0
.end method
