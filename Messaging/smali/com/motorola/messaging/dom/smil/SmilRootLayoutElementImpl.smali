.class public Lcom/motorola/messaging/dom/smil/SmilRootLayoutElementImpl;
.super Lcom/motorola/messaging/dom/smil/SmilElementImpl;
.source "SmilRootLayoutElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRootLayoutElement;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getAbsoluteHeight()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDisplayHeight()I

    move-result v0

    return v0
.end method

.method protected getAbsoluteWidth()I
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDisplayWidth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 42
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "heightString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilRootLayoutElementImpl;->getAbsoluteHeight()I

    move-result v1

    .line 46
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I

    move-result v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 55
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "widthString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilRootLayoutElementImpl;->getAbsoluteWidth()I

    move-result v1

    .line 59
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->parseAbsoluteLength(Ljava/lang/String;Z)I

    move-result v1

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
    .line 68
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

    .line 70
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
    .line 77
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

    .line 78
    return-void
.end method
