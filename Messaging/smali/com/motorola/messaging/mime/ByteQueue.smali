.class public Lcom/motorola/messaging/mime/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->initialCapacity:I

    .line 28
    new-instance v0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->initialCapacity:I

    .line 32
    new-instance v0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    .line 33
    iput p1, p0, Lcom/motorola/messaging/mime/ByteQueue;->initialCapacity:I

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    iget v1, p0, Lcom/motorola/messaging/mime/ByteQueue;->initialCapacity:I

    invoke-direct {v0, v1}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public dequeue()B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    return v0
.end method

.method public enqueue(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/messaging/mime/ByteQueue;->buf:Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->add(B)Z

    .line 38
    return-void
.end method
