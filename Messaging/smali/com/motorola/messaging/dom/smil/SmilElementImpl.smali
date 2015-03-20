.class public Lcom/motorola/messaging/dom/smil/SmilElementImpl;
.super Lcom/motorola/messaging/dom/ElementImpl;
.source "SmilElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/dom/ElementImpl;-><init>(Lcom/motorola/messaging/dom/DocumentImpl;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getAbsoluteHeight()I
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be overriden by sub-class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAbsoluteWidth()I
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be overriden by sub-class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseAbsoluteLength(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "length"    # Ljava/lang/String;
    .param p2, "horizontal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 58
    const-string v4, "px"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const-string v4, "px"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 73
    :goto_0
    return v3

    .line 61
    :cond_0
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const-wide v4, 0x3f847ae147ae147bL

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v6, v3

    mul-double v1, v4, v6

    .line 63
    .local v1, "value":D
    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->getAbsoluteWidth()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    .line 68
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/dom/smil/SmilElementImpl;->getAbsoluteHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    goto :goto_1

    .line 71
    .end local v1    # "value":D
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method
