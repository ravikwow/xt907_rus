.class public Lcom/motorola/blur/util/mime/LimitedByteInputStream;
.super Lcom/motorola/blur/util/mime/CRLFInputStream;
.source "LimitedByteInputStream.java"


# instance fields
.field private mCount:J

.field private mLimit:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "limit"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/motorola/blur/util/mime/CRLFInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    iput-wide p2, p0, Lcom/motorola/blur/util/mime/LimitedByteInputStream;->mLimit:J

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/util/mime/LimitedByteInputStream;->mCount:J

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/motorola/blur/util/mime/LimitedByteInputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/blur/util/mime/LimitedByteInputStream;->mCount:J

    iget-wide v2, p0, Lcom/motorola/blur/util/mime/LimitedByteInputStream;->mLimit:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 79
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/blur/util/mime/LimitedByteInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/LimitedByteInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 104
    if-nez v1, :cond_0

    .line 105
    const/4 v1, -0x1

    .line 111
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 109
    .restart local v0    # "c":I
    :cond_1
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
