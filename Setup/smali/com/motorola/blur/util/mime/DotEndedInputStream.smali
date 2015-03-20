.class public Lcom/motorola/blur/util/mime/DotEndedInputStream;
.super Lcom/motorola/blur/util/mime/CRLFInputStream;
.source "DotEndedInputStream.java"


# instance fields
.field private mEof:Z

.field private mLineCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 38
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/util/mime/CRLFInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/motorola/blur/util/mime/DotEndedInputStream;->mLineCount:I

    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/4 v5, -0x1

    const/16 v7, 0xa

    .line 68
    iget-boolean v6, p0, Lcom/motorola/blur/util/mime/DotEndedInputStream;->mEof:Z

    if-eqz v6, :cond_1

    move v0, v5

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 73
    .local v0, "c":I
    if-ne v0, v8, :cond_0

    .line 74
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 75
    .local v1, "c1":I
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 76
    .local v2, "c2":I
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 77
    .local v3, "c3":I
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 78
    .local v4, "c4":I
    if-ne v1, v7, :cond_2

    .line 79
    iget v6, p0, Lcom/motorola/blur/util/mime/DotEndedInputStream;->mLineCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/motorola/blur/util/mime/DotEndedInputStream;->mLineCount:I

    .line 82
    :cond_2
    if-ne v1, v7, :cond_4

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_4

    .line 83
    if-ne v3, v8, :cond_3

    if-ne v4, v7, :cond_3

    .line 84
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/motorola/blur/util/mime/DotEndedInputStream;->mEof:Z

    move v0, v5

    .line 85
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 93
    invoke-virtual {p0, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 94
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p0, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 99
    invoke-virtual {p0, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 100
    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 101
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

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
    .line 132
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/blur/util/mime/DotEndedInputStream;->read([BII)I

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
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/DotEndedInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 158
    if-nez v1, :cond_0

    .line 159
    const/4 v1, -0x1

    .line 165
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 163
    .restart local v0    # "c":I
    :cond_1
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetLineCount()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/util/mime/DotEndedInputStream;->mLineCount:I

    .line 47
    return-void
.end method
