.class public Lcom/motorola/blur/util/mime/CRLFInputStream;
.super Ljava/io/PushbackInputStream;
.source "CRLFInputStream.java"


# instance fields
.field private mBuffer:[B

.field private mLineCount:I

.field private mReturnOnCRLF:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/util/mime/CRLFInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public getLineCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mLineCount:I

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 87
    iget-object v6, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mBuffer:[B

    if-nez v6, :cond_0

    .line 88
    const/16 v6, 0x80

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mBuffer:[B

    .line 91
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mBuffer:[B

    .line 93
    .local v5, "tmp":[B
    array-length v3, v5

    .line 94
    .local v3, "limit":I
    const/4 v1, 0x0

    .line 96
    .local v1, "count":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v7, :cond_1

    .line 97
    if-ne v0, v9, :cond_2

    iget-boolean v6, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mReturnOnCRLF:Z

    if-nez v6, :cond_2

    .line 122
    :cond_1
    :goto_1
    if-ne v0, v7, :cond_6

    if-nez v1, :cond_6

    .line 123
    const/4 v6, 0x0

    .line 126
    :goto_2
    return-object v6

    .line 101
    :cond_2
    const/16 v6, 0xd

    if-ne v0, v6, :cond_3

    .line 102
    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 103
    .local v4, "next":I
    iget-boolean v6, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mReturnOnCRLF:Z

    if-eqz v6, :cond_5

    .line 104
    if-eq v4, v9, :cond_1

    .line 114
    .end local v4    # "next":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_4

    .line 115
    add-int/lit16 v6, v1, 0x80

    new-array v5, v6, [B

    .line 116
    array-length v6, v5

    sub-int/2addr v6, v1

    add-int/lit8 v3, v6, -0x1

    .line 117
    iget-object v6, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mBuffer:[B

    invoke-static {v6, v8, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v5, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mBuffer:[B

    .line 120
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    int-to-byte v6, v0

    aput-byte v6, v5, v1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 108
    .restart local v4    # "next":I
    :cond_5
    if-eq v4, v9, :cond_1

    if-eq v4, v7, :cond_1

    .line 109
    invoke-virtual {p0, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1

    .line 125
    .end local v4    # "next":I
    :cond_6
    iget v6, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mLineCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mLineCount:I

    .line 126
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_DECODE_CHARSET:Ljava/lang/String;

    invoke-direct {v6, v5, v8, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_2
.end method

.method public resetLineCount()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mLineCount:I

    .line 61
    return-void
.end method

.method public setReturnOnCRLF(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/util/mime/CRLFInputStream;->mReturnOnCRLF:Z

    .line 65
    return-void
.end method
