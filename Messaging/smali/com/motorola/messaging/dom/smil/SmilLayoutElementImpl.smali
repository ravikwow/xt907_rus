.class public Lcom/motorola/messaging/dom/smil/SmilLayoutElementImpl;
.super Lcom/motorola/messaging/dom/smil/SmilElementImpl;
.source "SmilLayoutElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILLayoutElement;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getRegions()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 42
    const-string v0, "region"

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/dom/ElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;
    .locals 6

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 47
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 48
    .local v3, "rootLayoutNode":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 49
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 50
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "root-layout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .end local v3    # "rootLayoutNode":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    check-cast v3, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 49
    .restart local v3    # "rootLayoutNode":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    if-nez v3, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string v5, "root-layout"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .end local v3    # "rootLayoutNode":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    check-cast v3, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 57
    .restart local v3    # "rootLayoutNode":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultRootRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/model/RegionModel;->getWidth()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 58
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultRootRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/model/RegionModel;->getHeight()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/motorola/messaging/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 61
    :cond_2
    return-object v3
.end method
