.class public Lcom/motorola/messaging/dom/smil/SmilParElementImpl;
.super Lcom/motorola/messaging/dom/smil/SmilElementImpl;
.source "SmilParElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILParElement;


# instance fields
.field mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl$1;

    invoke-direct {v0, p0, p0}, Lcom/motorola/messaging/dom/smil/SmilParElementImpl$1;-><init>(Lcom/motorola/messaging/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .line 100
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "instant"    # F

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getDur()F
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->pauseElement()V

    .line 176
    return-void
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->resumeElement()V

    .line 180
    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .param p1, "seekTo"    # F

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->seekElement(F)V

    .line 184
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
    .line 191
    iget-object v0, p0, Lcom/motorola/messaging/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setDur(F)V

    .line 192
    return-void
.end method
