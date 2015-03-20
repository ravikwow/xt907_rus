.class public Lcom/motorola/blur/util/mime/LimitedLineInputStream;
.super Lcom/motorola/blur/util/mime/CRLFInputStream;
.source "LimitedLineInputStream.java"


# instance fields
.field private mCount:I

.field private mLimit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/motorola/blur/util/mime/CRLFInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    iput p2, p0, Lcom/motorola/blur/util/mime/LimitedLineInputStream;->mLimit:I

    .line 40
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
    .line 51
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Lcom/motorola/blur/util/mime/LimitedLineInputStream;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/blur/util/mime/LimitedLineInputStream;->mCount:I

    iget v1, p0, Lcom/motorola/blur/util/mime/LimitedLineInputStream;->mLimit:I

    if-lt v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/motorola/blur/util/mime/CRLFInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
