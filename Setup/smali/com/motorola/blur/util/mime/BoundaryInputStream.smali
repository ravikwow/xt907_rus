.class public Lcom/motorola/blur/util/mime/BoundaryInputStream;
.super Lcom/motorola/blur/util/mime/CRLFInputStream;
.source "BoundaryInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BoundaryInputStream"


# instance fields
.field private final mBoundary:Ljava/lang/String;

.field private mEof:Z

.field private mHasMorePart:Z

.field private final mLineBuffer:[B

.field private mSeenBoundary:Z

.field private mSeenMultipartEnd:Z


# direct methods
.method public constructor <init>(Lcom/motorola/blur/util/mime/CRLFInputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "is"    # Lcom/motorola/blur/util/mime/CRLFInputStream;
    .param p2, "boundary"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/util/mime/CRLFInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 44
    iput-object p2, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mBoundary:Ljava/lang/String;

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mLineBuffer:[B

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mHasMorePart:Z

    .line 47
    return-void
.end method

.method private clearSeenBoundary()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mSeenBoundary:Z

    .line 103
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mHasMorePart:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->reset()V

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/CRLFInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/CRLFInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMorePart()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mHasMorePart:Z

    return v0
.end method

.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x2d

    const/4 v4, -0x1

    .line 116
    iget-boolean v5, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mEof:Z

    if-eqz v5, :cond_1

    move v1, v4

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 121
    .local v1, "c":I
    if-ne v1, v8, :cond_a

    .line 122
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 123
    .local v0, "b":I
    if-ne v0, v8, :cond_9

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "len":I
    :goto_1
    iget-object v5, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mLineBuffer:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 126
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 127
    .local v3, "n":I
    if-ne v3, v4, :cond_4

    .line 132
    .end local v3    # "n":I
    :cond_2
    iget-object v5, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mLineBuffer:[B

    array-length v5, v5

    if-ne v2, v5, :cond_8

    .line 133
    iget-object v5, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mBoundary:Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mLineBuffer:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 134
    iput-boolean v10, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mEof:Z

    .line 135
    iput-boolean v10, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mSeenBoundary:Z

    .line 141
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 142
    if-ne v1, v8, :cond_7

    .line 143
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 144
    if-ne v0, v8, :cond_5

    .line 145
    iput-boolean v9, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mHasMorePart:Z

    .line 146
    iput-boolean v10, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mSeenMultipartEnd:Z

    :cond_3
    :goto_2
    move v1, v4

    .line 161
    goto :goto_0

    .line 130
    .restart local v3    # "n":I
    :cond_4
    iget-object v5, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mLineBuffer:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    .end local v3    # "n":I
    :cond_5
    if-eq v0, v4, :cond_6

    .line 154
    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 156
    :cond_6
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_2

    .line 158
    :cond_7
    if-eq v1, v4, :cond_3

    .line 159
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_2

    .line 164
    :cond_8
    iget-object v5, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mLineBuffer:[B

    invoke-virtual {p0, v5, v9, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 166
    .end local v2    # "len":I
    :cond_9
    if-eq v0, v4, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_0

    .line 169
    .end local v0    # "b":I
    :cond_a
    if-ne v1, v4, :cond_0

    .line 170
    iput-boolean v9, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mHasMorePart:Z

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
    .line 190
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->read([BII)I

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
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 216
    if-nez v1, :cond_0

    .line 217
    const/4 v1, -0x1

    .line 223
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 221
    .restart local v0    # "c":I
    :cond_1
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/CRLFInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    iget-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mHasMorePart:Z

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mEof:Z

    .line 91
    invoke-direct {p0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->clearSeenBoundary()V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/CRLFInputStream;->readLine()Ljava/lang/String;

    .line 94
    return-void
.end method

.method public seenBoundary()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mSeenBoundary:Z

    return v0
.end method

.method public seenMultipartEnd()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/motorola/blur/util/mime/BoundaryInputStream;->mSeenMultipartEnd:Z

    return v0
.end method
