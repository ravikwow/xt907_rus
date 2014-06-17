.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v1, 0x0

    .line 571
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 572
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 573
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 574
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 575
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .param p0, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 192
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 194
    .local v0, "par":Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x41000000

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 195
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 196
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    const/4 v1, 0x0

    .line 581
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 582
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 583
    return-void
.end method

.method private static appendSmilDocument(Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 291
    invoke-static {p0, p1}, Lcom/android/mms/model/SmilHelper;->createOrAppendSmilDocument(Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 203
    .local v0, "mediaElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 204
    return-object v0
.end method

.method private static createOrAppendSmilDocument(Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 30
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 300
    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 302
    .local v3, "append":Z
    :goto_0
    const/16 v20, 0x0

    .line 303
    .local v20, "par":Lorg/w3c/dom/smil/SMILParElement;
    if-nez v3, :cond_0

    .line 304
    new-instance p1, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    .end local p1    # "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-direct/range {p1 .. p1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 308
    .restart local p1    # "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v27, "smil"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILElement;

    .line 309
    .local v23, "smil":Lorg/w3c/dom/smil/SMILElement;
    const-string v27, "xmlns"

    const-string v28, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 313
    const-string v27, "head"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/smil/SMILElement;

    .line 314
    .local v12, "head":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 316
    const-string v27, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 317
    .local v19, "layout":Lorg/w3c/dom/smil/SMILLayoutElement;
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 320
    const-string v27, "body"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILElement;

    .line 321
    .local v5, "body":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 322
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v20

    .line 326
    .end local v5    # "body":Lorg/w3c/dom/smil/SMILElement;
    .end local v12    # "head":Lorg/w3c/dom/smil/SMILElement;
    .end local v19    # "layout":Lorg/w3c/dom/smil/SMILLayoutElement;
    .end local v23    # "smil":Lorg/w3c/dom/smil/SMILElement;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v22

    .line 327
    .local v22, "partsNum":I
    if-nez v22, :cond_3

    .line 410
    :cond_1
    return-object p1

    .line 300
    .end local v3    # "append":Z
    .end local v20    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v22    # "partsNum":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 331
    .restart local v3    # "append":Z
    .restart local v20    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .restart local v22    # "partsNum":I
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v7

    .line 332
    .local v7, "drmManagerClient":Landroid/drm/DrmManagerClient;
    const/16 v24, 0x0

    .line 334
    .local v24, "srcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 335
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getAllSrcsFromDocument(Lorg/w3c/dom/smil/SMILDocument;)Ljava/util/List;

    move-result-object v24

    .line 337
    :cond_4
    const/4 v10, 0x0

    .line 338
    .local v10, "hasText":Z
    const/4 v8, 0x0

    .line 339
    .local v8, "hasAudioMedia":Z
    const/4 v11, 0x0

    .line 340
    .local v11, "hasVideoMedia":Z
    const/4 v9, 0x0

    .line 341
    .local v9, "hasImageMedia":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v13, v0, :cond_1

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v21

    .line 344
    .local v21, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v3, :cond_5

    .line 345
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->partIsInSmilDocument(Lcom/google/android/mms/pdu/PduPart;Ljava/util/List;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 341
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 349
    :cond_5
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 351
    .local v6, "contentType":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 352
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 354
    :cond_6
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 355
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 358
    :cond_7
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v15

    .line 359
    .local v15, "isAudioMedia":Z
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v18

    .line 360
    .local v18, "isVideoMedia":Z
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v16

    .line 361
    .local v16, "isImageMedia":Z
    const-string v27, "text/plain"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_8

    const-string v27, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_8

    const-string v27, "text/html"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    :cond_8
    const/16 v17, 0x1

    .line 364
    .local v17, "isText":Z
    :goto_3
    if-nez v15, :cond_a

    if-nez v18, :cond_a

    if-nez v16, :cond_a

    if-nez v17, :cond_a

    .line 366
    const-string v27, "Mms/smil"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unsupport media type in smil, contentType=\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 361
    .end local v17    # "isText":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    .line 372
    .restart local v17    # "isText":Z
    :cond_a
    if-eqz v20, :cond_e

    if-eqz v8, :cond_b

    if-nez v15, :cond_e

    if-nez v18, :cond_e

    :cond_b
    if-eqz v11, :cond_c

    if-nez v15, :cond_e

    if-nez v18, :cond_e

    if-nez v16, :cond_e

    :cond_c
    if-eqz v9, :cond_d

    if-nez v18, :cond_e

    if-nez v16, :cond_e

    :cond_d
    if-eqz v10, :cond_f

    if-eqz v17, :cond_f

    .line 377
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v20

    .line 378
    const/4 v10, 0x0

    .line 379
    const/4 v8, 0x0

    .line 380
    const/4 v11, 0x0

    .line 381
    const/4 v9, 0x0

    .line 384
    :cond_f
    if-eqz v17, :cond_10

    .line 385
    const-string v27, "text"

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v25

    .line 387
    .local v25, "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 388
    const/4 v10, 0x1

    .line 389
    goto/16 :goto_2

    .end local v25    # "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_10
    if-eqz v16, :cond_11

    .line 390
    const-string v27, "img"

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v14

    .line 392
    .local v14, "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 393
    const/4 v9, 0x1

    .line 394
    goto/16 :goto_2

    .end local v14    # "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_11
    if-eqz v18, :cond_12

    .line 395
    const-string v27, "video"

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v26

    .line 397
    .local v26, "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 398
    const/4 v11, 0x1

    .line 399
    goto/16 :goto_2

    .end local v26    # "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_12
    if-eqz v15, :cond_13

    .line 400
    const-string v27, "audio"

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 402
    .local v4, "audioElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 403
    const/4 v8, 0x1

    .line 404
    goto/16 :goto_2

    .line 406
    .end local v4    # "audioElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_13
    const-string v27, "Mms/smil"

    const-string v28, "unsupport media type"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 31
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 418
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 421
    .local v7, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v28, "smil"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/SMILElement;

    .line 422
    .local v22, "smilElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 425
    const-string v28, "head"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    .line 426
    .local v9, "headElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 429
    const-string v28, "layout"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 431
    .local v13, "layoutElement":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v9, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 434
    const-string v28, "root-layout"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 436
    .local v19, "rootLayoutElement":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    .line 437
    .local v14, "layouts":Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 438
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 439
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "bgColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 441
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 443
    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 446
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v18

    .line 447
    .local v18, "regions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v24, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/RegionModel;

    .line 449
    .local v17, "r":Lcom/android/mms/model/RegionModel;
    const-string v28, "region"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 450
    .local v23, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 452
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 453
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 454
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 455
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    .end local v17    # "r":Lcom/android/mms/model/RegionModel;
    .end local v23    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v28, "body"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 461
    .local v6, "bodyElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/model/SlideModel;

    .line 464
    .local v20, "slide":Lcom/android/mms/model/SlideModel;
    const/16 v27, 0x0

    .line 465
    .local v27, "txtRegionPresentInLayout":Z
    const/4 v12, 0x0

    .line 468
    .local v12, "imgRegionPresentInLayout":Z
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v16

    .line 469
    .local v16, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x447a0000

    div-float v28, v28, v29

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object/from16 v28, v16

    .line 471
    check-cast v28, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 474
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/MediaModel;

    .line 475
    .local v15, "media":Lcom/android/mms/model/MediaModel;
    const/16 v21, 0x0

    .line 476
    .local v21, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v25

    .line 477
    .local v25, "src":Ljava/lang/String;
    instance-of v0, v15, Lcom/android/mms/model/TextModel;

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v26, v15

    .line 478
    check-cast v26, Lcom/android/mms/model/TextModel;

    .line 479
    .local v26, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 485
    const-string v28, "text"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 486
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Text"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move/from16 v3, v27

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v27

    .line 513
    .end local v26    # "text":Lcom/android/mms/model/TextModel;
    :goto_2
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v4

    .line 514
    .local v4, "begin":I
    if-eqz v4, :cond_4

    .line 515
    const-string v28, "begin"

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_4
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    .line 518
    .local v8, "duration":I
    if-eqz v8, :cond_5

    .line 519
    int-to-float v0, v8

    move/from16 v28, v0

    const/high16 v29, 0x447a0000

    div-float v28, v28, v29

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 521
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 523
    check-cast v21, Lorg/w3c/dom/events/EventTarget;

    .end local v21    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1

    .line 491
    .end local v4    # "begin":I
    .end local v8    # "duration":I
    .restart local v21    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_6
    instance-of v0, v15, Lcom/android/mms/model/ImageModel;

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 492
    const-string v28, "img"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 493
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Image"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    .line 498
    :cond_7
    instance-of v0, v15, Lcom/android/mms/model/VideoModel;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 499
    const-string v28, "video"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 500
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Image"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    .line 505
    :cond_8
    instance-of v0, v15, Lcom/android/mms/model/AudioModel;

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 506
    const-string v28, "audio"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    goto/16 :goto_2

    .line 508
    :cond_9
    const-string v28, "Mms/smil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupport media: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 540
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "imgRegionPresentInLayout":Z
    .end local v15    # "media":Lcom/android/mms/model/MediaModel;
    .end local v16    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v20    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v21    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v25    # "src":Ljava/lang/String;
    .end local v27    # "txtRegionPresentInLayout":Z
    :cond_a
    return-object v7
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/model/SmilHelper;->createOrAppendSmilDocument(Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findImage(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .param p0, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 593
    .local v3, "partNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 594
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 596
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 597
    .local v0, "contentType":Ljava/lang/String;
    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v2

    .line 593
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .param p1, "rId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 546
    .local v1, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    .end local v1    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .param p0, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 147
    .local v2, "partNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 149
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 147
    .restart local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static formatSrc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 249
    if-eqz p0, :cond_0

    .line 250
    const-string v0, "(?i)(cid:)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[<>:]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAllSrcsFromDocument(Lorg/w3c/dom/smil/SMILDocument;)Ljava/util/List;
    .locals 12
    .param p0, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILDocument;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v7, "srcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    if-nez v11, :cond_1

    .line 238
    :cond_0
    return-object v7

    .line 215
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 216
    .local v4, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 217
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 218
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 219
    .local v5, "node":Lorg/w3c/dom/Node;
    instance-of v11, v5, Lorg/w3c/dom/smil/SMILParElement;

    if-eqz v11, :cond_4

    .line 220
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 223
    .local v10, "subNodeList":Lorg/w3c/dom/NodeList;
    if-nez v10, :cond_3

    const/4 v8, 0x0

    .line 225
    .local v8, "subCount":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v8, :cond_4

    .line 226
    invoke-interface {v10, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 227
    .local v9, "subNode":Lorg/w3c/dom/Node;
    instance-of v11, v9, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v11, :cond_2

    move-object v3, v9

    .line 228
    check-cast v3, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 229
    .local v3, "me":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "src":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 231
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->formatSrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v3    # "me":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v6    # "src":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    .end local v2    # "j":I
    .end local v8    # "subCount":I
    .end local v9    # "subNode":Lorg/w3c/dom/Node;
    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    goto :goto_1

    .line 217
    .end local v10    # "subNodeList":Lorg/w3c/dom/NodeList;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "model"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 120
    .local v1, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 123
    .local v0, "document":Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_0

    .line 124
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 125
    invoke-static {p0, v0}, Lcom/android/mms/model/SmilHelper;->appendSmilDocument(Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 128
    :cond_0
    if-nez v0, :cond_1

    .line 130
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 133
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6
    .param p0, "smilPart"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 171
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 178
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 179
    .local v2, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 188
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    .end local v2    # "document":Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 183
    :catch_1
    move-exception v3

    .line 184
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 185
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 186
    .local v3, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static isInSourcesList([BLjava/util/List;)Z
    .locals 2
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "srcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 277
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->formatSrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "sName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const/4 v1, 0x1

    .line 282
    .end local v0    # "sName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static partIsInSmilDocument(Lcom/google/android/mms/pdu/PduPart;Ljava/util/List;)Z
    .locals 2
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "srcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 265
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/model/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/model/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/model/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/model/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p2, "smilLayout"    # Lorg/w3c/dom/smil/SMILLayoutElement;
    .param p3, "regionId"    # Ljava/lang/String;
    .param p4, "regionPresentInLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "smilRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 559
    .local v0, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 561
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 562
    const/4 v1, 0x1

    .line 564
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showPdu(Ljava/lang/String;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    .line 628
    return-void
.end method

.method public static showPdu(Ljava/lang/String;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 715
    return-void
.end method

.method public static showPdu(Ljava/lang/String;[B)V
    .locals 0
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 644
    return-void
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .param p0, "in"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 160
    return-object p0
.end method
