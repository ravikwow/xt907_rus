.class public Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;
.super Lcom/motorola/messaging/dom/DocumentImpl;
.source "SmilDocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/events/DocumentEvent;
.implements Lorg/w3c/dom/smil/SMILDocument;


# instance fields
.field mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/motorola/messaging/dom/DocumentImpl;-><init>()V

    .line 56
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "SmilDocumentImpl"

    const-string v1, "SmilDocumentImpl constructor"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "arg0"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public beginElement()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->beginElement()Z

    move-result v0

    return v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .param p1, "arg0"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 169
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilRegionMediaElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilRegionMediaElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilLayoutElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    const-string v0, "root-layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilRootLayoutElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilRootLayoutElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_4
    const-string v0, "region"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilRegionElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_5
    const-string v0, "ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilRefElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilRefElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_6
    const-string v0, "par"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_7
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilElementImpl;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 303
    const-string v0, "Event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/motorola/messaging/dom/events/EventImpl;

    invoke-direct {v0}, Lcom/motorola/messaging/dom/events/EventImpl;-><init>()V

    return-object v0

    .line 306
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Not supported interface"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "instant"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getBegin called before time container is created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/w3c/dom/smil/SMILElement;
    .locals 5

    .prologue
    .line 225
    sget-boolean v3, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "SmilDocumentImpl"

    const-string v4, "getBody"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v2

    .line 230
    .local v2, "rootElement":Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    .line 231
    .local v1, "headElement":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 232
    .local v0, "bodyElement":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lorg/w3c/dom/smil/SMILElement;

    if-nez v3, :cond_2

    .line 234
    :cond_1
    const-string v3, "body"

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 235
    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 239
    :cond_2
    new-instance v4, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl$1;

    move-object v3, v0

    check-cast v3, Lorg/w3c/dom/smil/SMILElement;

    invoke-direct {v4, p0, v3}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl$1;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .line 278
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .end local v0    # "bodyElement":Lorg/w3c/dom/Node;
    return-object v0
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/smil/SMILElement;
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 195
    .local v0, "rootElement":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/w3c/dom/smil/SMILElement;

    if-nez v1, :cond_1

    .line 197
    :cond_0
    const-string v1, "smil"

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    :cond_1
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .end local v0    # "rootElement":Lorg/w3c/dom/Node;
    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDur()F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHead()Lorg/w3c/dom/smil/SMILElement;
    .locals 4

    .prologue
    .line 209
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 210
    const-string v2, "SmilDocumentImpl"

    const-string v3, "getHead"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->getDocumentElement()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    .line 214
    .local v1, "rootElement":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 215
    .local v0, "headElement":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lorg/w3c/dom/smil/SMILElement;

    if-nez v2, :cond_2

    .line 217
    :cond_1
    const-string v2, "head"

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 218
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 221
    :cond_2
    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .end local v0    # "headElement":Lorg/w3c/dom/Node;
    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    .line 283
    .local v0, "headElement":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    .line 286
    .local v1, "layoutElement":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 287
    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/w3c/dom/smil/SMILLayoutElement;

    if-nez v2, :cond_0

    .line 288
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_0
    if-nez v1, :cond_1

    .line 293
    new-instance v1, Lcom/motorola/messaging/dom/smil/SmilLayoutElementImpl;

    .end local v1    # "layoutElement":Lorg/w3c/dom/Node;
    const-string v2, "layout"

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/dom/smil/SmilLayoutElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 294
    .restart local v1    # "layoutElement":Lorg/w3c/dom/Node;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 296
    :cond_1
    check-cast v1, Lorg/w3c/dom/smil/SMILLayoutElement;

    .end local v1    # "layoutElement":Lorg/w3c/dom/Node;
    return-object v1
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "arg0"    # Lorg/w3c/dom/Node;

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "arg0"    # Lorg/w3c/dom/Node;

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalizeDocument()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->pauseElement()V

    .line 119
    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->resumeElement()V

    .line 123
    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .param p1, "seekTo"    # F

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->seekElement(F)V

    .line 127
    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentURI"    # Ljava/lang/String;

    .prologue
    .line 360
    return-void
.end method

.method public setDur(F)V
    .locals 1
    .param p1, "dur"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->setDur(F)V

    .line 135
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0
    .param p1, "strictErrorChecking"    # Z

    .prologue
    .line 365
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 430
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .param p1, "xmlStandalone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 370
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 375
    return-void
.end method
