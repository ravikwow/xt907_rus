.class public Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;
.super Lcom/motorola/messaging/dom/smil/SmilElementImpl;
.source "SmilRegionElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionElement;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getAbsoluteHeight()I
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getAbsoluteWidth()I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 4

    .prologue
    .line 158
    :try_start_0
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "SmilRegnElmntImpl"

    const-string v3, "Height attribute is not set or incorrect."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v1

    .line 166
    .local v1, "bbh":I
    :try_start_1
    const-string v2, "top"

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    sub-int/2addr v1, v2

    .line 173
    :cond_2
    :goto_1
    :try_start_2
    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_2

    .line 169
    const-string v2, "SmilRegnElmntImpl"

    const-string v3, "Top attribute is not set or incorrect."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :catch_2
    move-exception v0

    .line 175
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "SmilRegnElmntImpl"

    const-string v3, "Bottom attribute is not set or incorrect."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()I
    .locals 6

    .prologue
    .line 77
    :try_start_0
    const-string v4, "left"

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 93
    :goto_0
    return v4

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v4, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v4, :cond_0

    .line 80
    const-string v4, "SmilRegnElmntImpl"

    const-string v5, "Left attribute is not set or incorrect."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v1

    .line 85
    .local v1, "bbw":I
    const-string v4, "right"

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I

    move-result v2

    .line 86
    .local v2, "right":I
    const-string v4, "width"

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 87
    .local v3, "width":I
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    goto :goto_0

    .line 88
    .end local v1    # "bbw":I
    .end local v2    # "right":I
    .end local v3    # "width":I
    :catch_1
    move-exception v0

    .line 89
    sget-boolean v4, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v4, :cond_1

    .line 90
    const-string v4, "SmilRegnElmntImpl"

    const-string v5, "Right or width attribute is not set or incorrect."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 98
    :try_start_0
    const-string v4, "top"

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 114
    :goto_0
    return v4

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v4, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "SmilRegnElmntImpl"

    const-string v6, "Top attribute is not set or incorrect."

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v1

    .line 106
    .local v1, "bbh":I
    const-string v4, "bottom"

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I

    move-result v2

    .line 107
    .local v2, "bottom":I
    const-string v4, "height"

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 108
    .local v3, "height":I
    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    goto :goto_0

    .line 109
    .end local v1    # "bbh":I
    .end local v2    # "bottom":I
    .end local v3    # "height":I
    :catch_1
    move-exception v0

    .line 110
    sget-boolean v4, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v4, :cond_1

    .line 111
    const-string v4, "SmilRegnElmntImpl"

    const-string v6, "Bottom or height attribute is not set or incorrect."

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v4, v5

    .line 114
    goto :goto_0
.end method

.method public getWidth()I
    .locals 4

    .prologue
    .line 188
    :try_start_0
    const-string v2, "width"

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "_":Ljava/lang/NumberFormatException;
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_1

    .line 191
    const-string v2, "SmilRegnElmntImpl"

    const-string v3, "Width attribute is not set or incorrect."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v1

    .line 196
    .local v1, "bbw":I
    :try_start_1
    const-string v2, "left"

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    sub-int/2addr v1, v2

    .line 203
    :cond_2
    :goto_1
    :try_start_2
    const-string v2, "right"

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_2

    .line 199
    const-string v2, "SmilRegnElmntImpl"

    const-string v3, "Left attribute is not set or incorrect."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :catch_2
    move-exception v0

    .line 205
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 206
    const-string v2, "SmilRegnElmntImpl"

    const-string v3, "Right attribute is not set or incorrect."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 3
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 239
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/messaging/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .param p1, "left"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "left"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setTop(I)V
    .locals 2
    .param p1, "top"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "top"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 225
    const-string v0, "width"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
