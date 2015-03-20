.class public abstract Lcom/motorola/blur/util/mime/BodyPart;
.super Ljava/lang/Object;
.source "BodyPart.java"


# static fields
.field protected static final MAX_LINE_LENGTH:I = 0x4c


# instance fields
.field protected mHeaders:Lcom/motorola/blur/util/mime/Headers;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/motorola/blur/util/mime/Headers;

    invoke-direct {v0}, Lcom/motorola/blur/util/mime/Headers;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getHeaders()Lcom/motorola/blur/util/mime/Headers;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/Headers;->getAttachementFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAttachment()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/Headers;->isAttachement()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCountedAsAttachment()Z
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/Headers;->getContentType()Lcom/motorola/blur/util/mime/ContentType;

    move-result-object v0

    .line 77
    .local v0, "contentType":Lcom/motorola/blur/util/mime/ContentType;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentType;->isMultipart()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentType;->isPlainText()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentType;->isHtml()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/BodyPart;->isAttachment()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    :cond_1
    const/4 v1, 0x0

    .line 81
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isInline()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v2}, Lcom/motorola/blur/util/mime/Headers;->getContentDisposition()Lcom/motorola/blur/util/mime/ContentDisposition;

    move-result-object v0

    .line 87
    .local v0, "cd":Lcom/motorola/blur/util/mime/ContentDisposition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentDisposition;->isInline()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 89
    .end local v0    # "cd":Lcom/motorola/blur/util/mime/ContentDisposition;
    :cond_0
    return v1
.end method

.method public isRfc822Message()Z
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/Headers;->getContentType()Lcom/motorola/blur/util/mime/ContentType;

    move-result-object v0

    .line 67
    .local v0, "contentType":Lcom/motorola/blur/util/mime/ContentType;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentType;->isRfc822Message()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public normalizeTransferEncoding()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public setHeaders(Lcom/motorola/blur/util/mime/Headers;)V
    .locals 0
    .param p1, "headers"    # Lcom/motorola/blur/util/mime/Headers;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    .line 54
    return-void
.end method

.method protected abstract writeBody(Ljava/io/Writer;Lcom/motorola/blur/util/mime/ProgressFeedback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeTo(Ljava/io/Writer;Lcom/motorola/blur/util/mime/ProgressFeedback;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "feedback"    # Lcom/motorola/blur/util/mime/ProgressFeedback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v2, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v2}, Lcom/motorola/blur/util/mime/Headers;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/util/mime/Header;

    .line 105
    .local v0, "header":Lcom/motorola/blur/util/mime/Header;
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v0    # "header":Lcom/motorola/blur/util/mime/Header;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/util/mime/BodyPart;->writeBody(Ljava/io/Writer;Lcom/motorola/blur/util/mime/ProgressFeedback;)V

    .line 112
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    return-void
.end method
