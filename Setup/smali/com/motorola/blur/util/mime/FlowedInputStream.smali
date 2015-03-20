.class public Lcom/motorola/blur/util/mime/FlowedInputStream;
.super Ljava/io/PushbackInputStream;
.source "FlowedInputStream.java"


# instance fields
.field private mDelSP:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "delSP"    # Z

    .prologue
    .line 44
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 45
    iput-boolean p2, p0, Lcom/motorola/blur/util/mime/FlowedInputStream;->mDelSP:Z

    .line 46
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 60
    .local v0, "c":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 61
    :cond_0
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 62
    .local v2, "r":I
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 63
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 64
    .local v1, "n":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 65
    iget-boolean v3, p0, Lcom/motorola/blur/util/mime/FlowedInputStream;->mDelSP:Z

    if-eqz v3, :cond_1

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 73
    .end local v0    # "c":I
    .end local v1    # "n":I
    .end local v2    # "r":I
    :cond_1
    :goto_0
    return v0

    .line 67
    .restart local v0    # "c":I
    .restart local v1    # "n":I
    .restart local v2    # "r":I
    :cond_2
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 68
    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_0

    .line 70
    .end local v1    # "n":I
    :cond_3
    invoke-virtual {p0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

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
    .line 91
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/blur/util/mime/FlowedInputStream;->read([BII)I

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
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/FlowedInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 117
    if-nez v1, :cond_0

    .line 118
    const/4 v1, -0x1

    .line 124
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 122
    .restart local v0    # "c":I
    :cond_1
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
