.class public Lcom/motorola/messaging/dom/smil/SmilRefElementImpl;
.super Lcom/motorola/messaging/dom/smil/SmilRegionMediaElementImpl;
.source "SmilRefElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRefElement;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/dom/smil/SmilRegionMediaElementImpl;-><init>(Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 27
    return-void
.end method
