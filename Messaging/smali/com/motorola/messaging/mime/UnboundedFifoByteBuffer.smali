.class Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"


# instance fields
.field protected buffer:[B

.field protected head:I

.field protected tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;-><init>(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-gtz p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    .line 82
    iput v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    .line 83
    iput v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    .line 84
    return-void
.end method


# virtual methods
.method public add(B)Z
    .locals 6
    .param p1, "b"    # B

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 121
    iget-object v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 123
    .local v2, "tmp":[B
    const/4 v1, 0x0

    .line 124
    .local v1, "j":I
    iget v0, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    .local v0, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v1

    .line 126
    iget-object v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    aput-byte v5, v3, v0

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 130
    iget-object v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    iput-object v2, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    .line 136
    iput v5, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    .line 137
    iput v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    .line 140
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":[B
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    iget v4, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    aput-byte p1, v3, v4

    .line 141
    iget v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    .line 142
    iget v3, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    iget-object v4, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 143
    iput v5, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    .line 145
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()B
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The buffer is already empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    aget-byte v0, v1, v2

    .line 175
    .local v0, "element":B
    iget v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    .line 176
    iget v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    iget-object v2, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 177
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    .line 180
    :cond_1
    return v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "size":I
    iget v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    if-ge v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    add-int v0, v1, v2

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    iget v1, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lcom/motorola/messaging/mime/UnboundedFifoByteBuffer;->head:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
