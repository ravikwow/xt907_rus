.class public Lcom/motorola/blur/util/mime/SubstituteInputStream;
.super Ljava/io/InputStream;
.source "SubstituteInputStream.java"


# instance fields
.field private mBuffer:[I

.field private mIs:Ljava/io/InputStream;

.field private mPos:I

.field private mReplacement:[I

.field private mSearchFor:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "searchFor"    # Ljava/lang/String;
    .param p3, "repl"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 43
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Search text can\'t be empty!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mIs:Ljava/io/InputStream;

    .line 48
    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    .local v0, "buf":[B
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    .line 55
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 56
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_2
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    array-length v4, v4

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    array-length v3, v3

    :goto_2
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mBuffer:[I

    .line 60
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mBuffer:[I

    array-length v3, v3

    iput v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    .line 64
    return-void

    .line 59
    :cond_3
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    array-length v3, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    .end local v0    # "buf":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid charset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private unread([III)V
    .locals 2
    .param p1, "buffer"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mBuffer:[I

    iget v1, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    .line 106
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 101
    return-void
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    iget v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    iget-object v4, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mBuffer:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 72
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mBuffer:[I

    iget v4, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    aget v2, v3, v4

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 76
    .local v2, "read":I
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_0

    .line 77
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    .local v0, "b":I
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    aget v3, v3, v1

    if-eq v0, v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mBuffer:[I

    iget v4, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mPos:I

    aput v0, v3, v4

    .line 81
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mSearchFor:[I

    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v3, v6, v4}, Lcom/motorola/blur/util/mime/SubstituteInputStream;->unread([III)V

    goto :goto_0

    .line 77
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "b":I
    :cond_3
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    array-length v3, v3

    if-nez v3, :cond_4

    .line 87
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_0

    .line 89
    :cond_4
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    iget-object v4, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v6, v4}, Lcom/motorola/blur/util/mime/SubstituteInputStream;->unread([III)V

    .line 90
    iget-object v3, p0, Lcom/motorola/blur/util/mime/SubstituteInputStream;->mReplacement:[I

    aget v2, v3, v5

    goto :goto_0
.end method
