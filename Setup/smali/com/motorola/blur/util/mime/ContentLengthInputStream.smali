.class public Lcom/motorola/blur/util/mime/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private mContentLength:I

.field private mIs:Ljava/io/InputStream;

.field private mPos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mIs:Ljava/io/InputStream;

    .line 33
    iput p2, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mContentLength:I

    .line 34
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
    .line 38
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 39
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
    .line 43
    iget v0, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mPos:I

    iget v1, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mContentLength:I

    if-lt v0, v1, :cond_0

    .line 44
    const/4 v0, -0x1

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    iget v0, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mPos:I

    .line 47
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ContentLengthInputStream;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method
