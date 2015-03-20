.class Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;
.super Lcom/motorola/messaging/dom/smil/ElementTimeImpl;
.source "SmilMediaElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .param p2, "x0"    # Lorg/w3c/dom/smil/SMILElement;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-direct {p0, p2}, Lcom/motorola/messaging/dom/smil/ElementTimeImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method

.method private createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 43
    .local v0, "doc":Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 44
    .local v1, "event":Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 45
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 46
    const-string v2, "SmilMediaElmntImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching \'begin\' event to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v4}, Lcom/motorola/messaging/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v4}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-object v1
.end method

.method private createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "seekTo"    # I

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/motorola/messaging/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 57
    .local v0, "doc":Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 58
    .local v1, "event":Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3, p2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZI)V

    .line 59
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "SmilMediaElmntImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching \'begin\' event to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v4}, Lcom/motorola/messaging/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v4}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-object v1
.end method


# virtual methods
.method public beginElement()Z
    .locals 2

    .prologue
    .line 69
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 70
    .local v0, "startEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method public endElement()Z
    .locals 2

    .prologue
    .line 75
    const-string v1, "SmilMediaEnd"

    invoke-direct {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 76
    .local v0, "endEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public getDur()F
    .locals 4

    .prologue
    .line 97
    invoke-super {p0}, Lcom/motorola/messaging/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    .line 98
    .local v0, "dur":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/motorola/messaging/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    :cond_0
    const/high16 v0, -0x40800000

    .line 112
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 105
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_2
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "img"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_4
    const-string v2, "SmilMediaElmntImpl"

    const-string v3, "Unknown media type"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseElement()V
    .locals 2

    .prologue
    .line 86
    const-string v1, "SmilMediaPause"

    invoke-direct {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 87
    .local v0, "pauseEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 88
    return-void
.end method

.method public resumeElement()V
    .locals 2

    .prologue
    .line 81
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 82
    .local v0, "resumeEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 83
    return-void
.end method

.method public seekElement(F)V
    .locals 3
    .param p1, "seekTo"    # F

    .prologue
    .line 91
    const-string v1, "SmilMediaSeek"

    float-to-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 92
    .local v0, "seekEvent":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/motorola/messaging/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 93
    return-void
.end method
