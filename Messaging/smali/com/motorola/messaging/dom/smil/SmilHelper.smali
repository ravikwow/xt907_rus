.class public Lcom/motorola/messaging/dom/smil/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# static fields
.field private static final LOCAL_LOG:Z

.field private static UTnumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    .line 265
    const/4 v0, -0x1

    sput v0, Lcom/motorola/messaging/dom/smil/SmilHelper;->UTnumber:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method public static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/motorola/messaging/model/MediaModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "media"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    const/4 v1, 0x0

    .line 1347
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 1348
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 1349
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 1350
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 1351
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 3
    .param p0, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 934
    sget-boolean v1, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 935
    const-string v1, "SmilHelper"

    const-string v2, "addPar"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_0
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 940
    .local v0, "par":Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x41000000

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 941
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 942
    return-object v0
.end method

.method public static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/motorola/messaging/model/SlideModel;)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "slide"    # Lcom/motorola/messaging/model/SlideModel;

    .prologue
    const/4 v1, 0x0

    .line 1357
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 1358
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 1359
    return-void
.end method

.method private static appendSmilDocument(Lcom/motorola/messaging/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "pb"    # Lcom/motorola/messaging/pdu/PduBody;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 1015
    invoke-static {p0, p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createOrAppendSmilDocument(Lcom/motorola/messaging/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 947
    sget-boolean v1, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 948
    const-string v1, "SmilHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createMediaElement, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_0
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 953
    .local v0, "mediaElement":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v0, p2}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 954
    return-object v0
.end method

.method private static createOrAppendSmilDocument(Lcom/motorola/messaging/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 31
    .param p0, "pb"    # Lcom/motorola/messaging/pdu/PduBody;
    .param p1, "document"    # Lorg/w3c/dom/smil/SMILDocument;

    .prologue
    .line 1019
    sget-boolean v28, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v28, :cond_0

    .line 1020
    const-string v28, "SmilHelper"

    const-string v29, "createSmilDocument(PduBody)"

    invoke-static/range {v28 .. v29}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_0
    sget-boolean v28, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v28, :cond_1

    .line 1024
    const-string v28, "SmilHelper"

    const-string v29, "Creating default SMIL document."

    invoke-static/range {v28 .. v29}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_1
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    .line 1029
    .local v3, "append":Z
    :goto_0
    const/16 v21, 0x0

    .line 1030
    .local v21, "par":Lorg/w3c/dom/smil/SMILParElement;
    if-nez v3, :cond_2

    .line 1031
    new-instance p1, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;

    .end local p1    # "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-direct/range {p1 .. p1}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;-><init>()V

    .line 1035
    .restart local p1    # "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v28, "smil"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/smil/SMILElement;

    .line 1036
    .local v24, "smil":Lorg/w3c/dom/smil/SMILElement;
    const-string v28, "xmlns"

    const-string v29, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1040
    const-string v28, "head"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILElement;

    .line 1041
    .local v13, "head":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1043
    const-string v28, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 1044
    .local v20, "layout":Lorg/w3c/dom/smil/SMILLayoutElement;
    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1047
    const-string v28, "body"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILElement;

    .line 1048
    .local v5, "body":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1049
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v21

    .line 1053
    .end local v5    # "body":Lorg/w3c/dom/smil/SMILElement;
    .end local v13    # "head":Lorg/w3c/dom/smil/SMILElement;
    .end local v20    # "layout":Lorg/w3c/dom/smil/SMILLayoutElement;
    .end local v24    # "smil":Lorg/w3c/dom/smil/SMILElement;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v23

    .line 1055
    .local v23, "partsNum":I
    sget-boolean v28, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v28, :cond_3

    .line 1056
    const-string v28, "SmilHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "PDU - num parts:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_3
    if-nez v23, :cond_6

    .line 1157
    :cond_4
    return-object p1

    .line 1027
    .end local v3    # "append":Z
    .end local v21    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v23    # "partsNum":I
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1063
    .restart local v3    # "append":Z
    .restart local v21    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .restart local v23    # "partsNum":I
    :cond_6
    const/16 v25, 0x0

    .line 1065
    .local v25, "srcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_7

    .line 1066
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->getAllSrcsFromDocument(Lorg/w3c/dom/smil/SMILDocument;)Ljava/util/List;

    move-result-object v25

    .line 1069
    :cond_7
    const/4 v11, 0x0

    .line 1070
    .local v11, "hasText":Z
    const/4 v9, 0x0

    .line 1071
    .local v9, "hasAudioMedia":Z
    const/4 v12, 0x0

    .line 1072
    .local v12, "hasVideoMedia":Z
    const/4 v10, 0x0

    .line 1074
    .local v10, "hasImageMedia":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v23

    if-ge v14, v0, :cond_4

    .line 1076
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v22

    .line 1077
    .local v22, "part":Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v3, :cond_9

    .line 1078
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->partIsInSmilDocument(Lcom/motorola/messaging/pdu/PduPart;Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1074
    :cond_8
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1082
    :cond_9
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 1084
    .local v6, "contentType":Ljava/lang/String;
    sget-boolean v28, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v28, :cond_a

    .line 1085
    const-string v28, "SmilHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "PDU - content type:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :cond_a
    if-eqz v6, :cond_b

    .line 1089
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1092
    :cond_b
    invoke-static {v6}, Lcom/motorola/messaging/mime/MmsContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 1095
    :try_start_0
    new-instance v7, Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v7, v6, v0, v1}, Lcom/motorola/messaging/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 1097
    .local v7, "dw":Lcom/motorola/messaging/drm/DrmWrapper;
    invoke-virtual {v7}, Lcom/motorola/messaging/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 1107
    .end local v7    # "dw":Lcom/motorola/messaging/drm/DrmWrapper;
    :cond_c
    :goto_3
    invoke-static {v6}, Lcom/motorola/messaging/mime/MmsContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v16

    .line 1108
    .local v16, "isAudioMedia":Z
    invoke-static {v6}, Lcom/motorola/messaging/mime/MmsContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v19

    .line 1109
    .local v19, "isVideoMedia":Z
    invoke-static {v6}, Lcom/motorola/messaging/mime/MmsContentType;->isImageType(Ljava/lang/String;)Z

    move-result v17

    .line 1111
    .local v17, "isImageMedia":Z
    const-string v28, "text/plain"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    const-string v28, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    :cond_d
    const/16 v18, 0x1

    .line 1114
    .local v18, "isText":Z
    :goto_4
    if-nez v16, :cond_f

    if-nez v19, :cond_f

    if-nez v17, :cond_f

    if-nez v18, :cond_f

    .line 1116
    const-string v28, "SmilHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "unsupport media type in smil, contentType=\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1098
    .end local v16    # "isAudioMedia":Z
    .end local v17    # "isImageMedia":Z
    .end local v18    # "isText":Z
    .end local v19    # "isVideoMedia":Z
    :catch_0
    move-exception v8

    .line 1099
    .local v8, "e":Ljava/io/IOException;
    const-string v28, "SmilHelper"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1100
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 1101
    .local v8, "e":Ljava/lang/RuntimeException;
    throw v8

    .line 1102
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v8

    .line 1103
    .local v8, "e":Ljava/lang/Exception;
    const-string v28, "SmilHelper"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1111
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v16    # "isAudioMedia":Z
    .restart local v17    # "isImageMedia":Z
    .restart local v19    # "isVideoMedia":Z
    :cond_e
    const/16 v18, 0x0

    goto :goto_4

    .line 1122
    .restart local v18    # "isText":Z
    :cond_f
    if-eqz v21, :cond_13

    if-eqz v9, :cond_10

    if-nez v16, :cond_13

    if-nez v19, :cond_13

    :cond_10
    if-eqz v12, :cond_11

    if-nez v16, :cond_13

    if-nez v19, :cond_13

    if-nez v17, :cond_13

    :cond_11
    if-eqz v10, :cond_12

    if-nez v19, :cond_13

    if-nez v17, :cond_13

    :cond_12
    if-eqz v11, :cond_14

    if-eqz v18, :cond_14

    .line 1127
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v21

    .line 1128
    const/4 v11, 0x0

    .line 1129
    const/4 v9, 0x0

    .line 1130
    const/4 v12, 0x0

    .line 1131
    const/4 v10, 0x0

    .line 1134
    :cond_14
    if-eqz v18, :cond_15

    .line 1135
    const-string v28, "text"

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v26

    .line 1137
    .local v26, "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1138
    const/4 v11, 0x1

    .line 1139
    goto/16 :goto_2

    .end local v26    # "textElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_15
    if-eqz v17, :cond_16

    .line 1140
    const-string v28, "img"

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v15

    .line 1142
    .local v15, "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1143
    const/4 v10, 0x1

    .line 1144
    goto/16 :goto_2

    .end local v15    # "imageElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_16
    if-eqz v19, :cond_17

    .line 1145
    const-string v28, "video"

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v27

    .line 1147
    .local v27, "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1148
    const/4 v12, 0x1

    .line 1149
    goto/16 :goto_2

    .end local v27    # "videoElement":Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_17
    if-eqz v16, :cond_8

    .line 1150
    const-string v28, "audio"

    invoke-virtual/range {v22 .. v22}, Lcom/motorola/messaging/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 1152
    .local v4, "audioElement":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1153
    const/4 v9, 0x1

    goto/16 :goto_2
.end method

.method private static createSmilDocument(Lcom/motorola/messaging/model/SmilModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 29
    .param p0, "smilModel"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 1161
    sget-boolean v26, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v26, :cond_0

    .line 1162
    const-string v26, "SmilHelper"

    const-string v27, "createSmilDocument(smilModel) - START"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_0
    new-instance v4, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;

    invoke-direct {v4}, Lcom/motorola/messaging/dom/smil/SmilDocumentImpl;-><init>()V

    .line 1168
    .local v4, "document":Lorg/w3c/dom/smil/SMILDocument;
    const-string v26, "smil"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILElement;

    .line 1169
    .local v20, "smilElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1172
    const-string v26, "head"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 1173
    .local v6, "headElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1176
    const-string v26, "layout"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 1178
    .local v10, "layoutElement":Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v6, v10}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1181
    const-string v26, "root-layout"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 1183
    .local v17, "rootLayoutElement":Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/model/SmilModel;->getRootLayout()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v16

    .line 1184
    .local v16, "root":Lcom/motorola/messaging/model/RegionModel;
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/messaging/model/RegionModel;->getWidth()I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 1185
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/messaging/model/RegionModel;->getHeight()I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 1186
    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/model/SmilModel;->getRegions()Ljava/util/Collection;

    move-result-object v15

    .line 1190
    .local v15, "regions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/motorola/messaging/model/RegionModel;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v22, "smilRegions":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/messaging/model/RegionModel;

    .line 1192
    .local v14, "r":Lcom/motorola/messaging/model/RegionModel;
    const-string v26, "region"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 1194
    .local v21, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual {v14}, Lcom/motorola/messaging/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v14}, Lcom/motorola/messaging/model/RegionModel;->getLeft()I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 1196
    invoke-virtual {v14}, Lcom/motorola/messaging/model/RegionModel;->getTop()I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 1197
    invoke-virtual {v14}, Lcom/motorola/messaging/model/RegionModel;->getWidth()I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 1198
    invoke-virtual {v14}, Lcom/motorola/messaging/model/RegionModel;->getHeight()I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 1199
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1203
    .end local v14    # "r":Lcom/motorola/messaging/model/RegionModel;
    .end local v21    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v26, "body"

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILElement;

    .line 1204
    .local v3, "bodyElement":Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/model/SmilModel;->getSlides()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/motorola/messaging/model/SlideModel;

    .line 1210
    .local v18, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-static {v4}, Lcom/motorola/messaging/dom/smil/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v13

    .line 1211
    .local v13, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/messaging/model/SlideModel;->getDuration()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x447a0000

    div-float v26, v26, v27

    move/from16 v0, v26

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 1214
    const/16 v25, 0x0

    .line 1215
    .local v25, "txtRegionSet":Z
    const/4 v9, 0x0

    .local v9, "imgOrVideoRegionSet":Z
    move-object/from16 v26, v13

    .line 1217
    check-cast v26, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/motorola/messaging/model/SlideModel;)V

    .line 1220
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/messaging/model/MediaModel;

    .line 1222
    .local v11, "media":Lcom/motorola/messaging/model/MediaModel;
    const/16 v19, 0x0

    .line 1223
    .local v19, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v11}, Lcom/motorola/messaging/model/MediaModel;->getEncodedSrc()Ljava/lang/String;

    move-result-object v23

    .line 1225
    .local v23, "src":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v26

    packed-switch v26, :pswitch_data_0

    .line 1276
    const-string v26, "SmilHelper"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unsupport media: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    move-object/from16 v24, v11

    .line 1227
    check-cast v24, Lcom/motorola/messaging/model/TextModel;

    .line 1228
    .local v24, "text":Lcom/motorola/messaging/model/TextModel;
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1229
    const-string v26, "SmilHelper"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Empty text part ignored: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1233
    :cond_3
    sget-boolean v26, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v26, :cond_4

    .line 1234
    const-string v26, "SmilHelper"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "check TextModel, text="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_4
    const-string v26, "text"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 1238
    if-nez v25, :cond_5

    move-object/from16 v26, v19

    .line 1239
    check-cast v26, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v27, "Text"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-static {v0, v1, v10, v2}, Lcom/motorola/messaging/dom/smil/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/List;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Z

    move-result v25

    .line 1280
    .end local v24    # "text":Lcom/motorola/messaging/model/TextModel;
    :cond_5
    :goto_2
    invoke-virtual {v11}, Lcom/motorola/messaging/model/MediaModel;->getDuration()I

    move-result v5

    .line 1281
    .local v5, "duration":I
    if-eqz v5, :cond_6

    .line 1282
    int-to-float v0, v5

    move/from16 v26, v0

    const/high16 v27, 0x447a0000

    div-float v26, v26, v27

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 1284
    :cond_6
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1286
    check-cast v19, Lorg/w3c/dom/events/EventTarget;

    .end local v19    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/motorola/messaging/dom/smil/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/motorola/messaging/model/MediaModel;)V

    goto/16 :goto_1

    .line 1245
    .end local v5    # "duration":I
    .restart local v19    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :pswitch_1
    sget-boolean v26, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v26, :cond_7

    .line 1246
    const-string v26, "SmilHelper"

    const-string v27, "check ImageModel"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_7
    const-string v26, "img"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 1250
    if-nez v9, :cond_5

    move-object/from16 v26, v19

    .line 1251
    check-cast v26, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v27, "Image"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-static {v0, v1, v10, v2}, Lcom/motorola/messaging/dom/smil/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/List;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Z

    move-result v9

    goto :goto_2

    .line 1256
    :pswitch_2
    sget-boolean v26, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v26, :cond_8

    .line 1257
    const-string v26, "SmilHelper"

    const-string v27, "check VideoModel"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_8
    const-string v26, "video"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 1261
    if-nez v9, :cond_5

    move-object/from16 v26, v19

    .line 1262
    check-cast v26, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v27, "Image"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-static {v0, v1, v10, v2}, Lcom/motorola/messaging/dom/smil/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/List;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Z

    move-result v9

    goto :goto_2

    .line 1268
    :pswitch_3
    sget-boolean v26, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v26, :cond_9

    .line 1269
    const-string v26, "SmilHelper"

    const-string v27, "check AudioModel"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_9
    const-string v26, "audio"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 1274
    goto/16 :goto_2

    .line 1290
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "imgOrVideoRegionSet":Z
    .end local v11    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v13    # "par":Lorg/w3c/dom/smil/SMILParElement;
    .end local v18    # "slide":Lcom/motorola/messaging/model/SlideModel;
    .end local v19    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v23    # "src":Ljava/lang/String;
    .end local v25    # "txtRegionSet":Z
    :cond_a
    sget-boolean v26, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v26, :cond_b

    .line 1291
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1292
    .local v12, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v4, v12}, Lcom/motorola/messaging/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 1293
    const-string v26, "SmilHelper"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SMIL "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    .end local v12    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_b
    sget-boolean v26, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v26, :cond_c

    .line 1297
    const-string v26, "SmilHelper"

    const-string v27, "createSmilDocument(smilModel) - END"

    invoke-static/range {v26 .. v27}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_c
    return-object v4

    .line 1225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createSmilDocument(Lcom/motorola/messaging/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .param p0, "pb"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 1011
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createOrAppendSmilDocument(Lcom/motorola/messaging/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static findImage(Lcom/motorola/messaging/pdu/PduBody;)Lcom/motorola/messaging/pdu/PduPart;
    .locals 7
    .param p0, "body"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 348
    .local v3, "partNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 349
    invoke-virtual {p0, v1}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v2

    .line 351
    .local v2, "part":Lcom/motorola/messaging/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 352
    .local v0, "contentType":Ljava/lang/String;
    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    sget-boolean v4, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 354
    const-string v4, "SmilHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findImage, part found, number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_0
    :goto_1
    return-object v2

    .line 348
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_2
    sget-boolean v4, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v4, :cond_3

    .line 362
    const-string v4, "SmilHelper"

    const-string v5, "findImage: image part not found"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findRegionElementById(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 5
    .param p1, "rId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 1306
    .local p0, "smilRegions":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 1307
    .local v1, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1308
    const-string v2, "SmilHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findRegionElementById, region found, region="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .end local v1    # "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v1

    .line 1313
    :cond_1
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 1314
    const-string v2, "SmilHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findRegionElementById, region not found, regionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/motorola/messaging/pdu/PduBody;)Lcom/motorola/messaging/pdu/PduPart;
    .locals 5
    .param p0, "body"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 322
    sget-boolean v3, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 323
    const-string v3, "SmilHelper"

    const-string v4, "findSmilPart"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 328
    .local v2, "partNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 329
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    .line 331
    .local v1, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    .end local v1    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :goto_1
    return-object v1

    .line 328
    .restart local v1    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
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
    .line 958
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 960
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

    .line 986
    :cond_0
    return-object v7

    .line 964
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 965
    .local v4, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 966
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 967
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 968
    .local v5, "node":Lorg/w3c/dom/Node;
    instance-of v11, v5, Lorg/w3c/dom/smil/SMILParElement;

    if-eqz v11, :cond_4

    .line 969
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 972
    .local v10, "subNodeList":Lorg/w3c/dom/NodeList;
    if-nez v10, :cond_3

    const/4 v8, 0x0

    .line 973
    .local v8, "subCount":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v8, :cond_4

    .line 974
    invoke-interface {v10, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 975
    .local v9, "subNode":Lorg/w3c/dom/Node;
    instance-of v11, v9, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v11, :cond_2

    move-object v3, v9

    .line 976
    check-cast v3, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 977
    .local v3, "me":Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 978
    .local v6, "src":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 979
    invoke-static {v6}, Lcom/motorola/messaging/model/MediaModelFactory;->formatSrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    .end local v3    # "me":Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v6    # "src":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 972
    .end local v2    # "j":I
    .end local v8    # "subCount":I
    .end local v9    # "subNode":Lorg/w3c/dom/Node;
    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    goto :goto_1

    .line 966
    .end local v10    # "subNodeList":Lorg/w3c/dom/NodeList;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDocument(Lcom/motorola/messaging/model/SmilModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .param p0, "model"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 309
    sget-boolean v0, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "SmilHelper"

    const-string v1, "getDocument(smilModel)"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createSmilDocument(Lcom/motorola/messaging/model/SmilModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/motorola/messaging/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 4
    .param p0, "pb"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 278
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "SmilHelper"

    const-string v3, "getDocument(PduBody)"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 283
    const-string v2, "retrieve"

    invoke-static {v2, p0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/PduBody;)V

    .line 287
    :cond_1
    invoke-static {p0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->findSmilPart(Lcom/motorola/messaging/pdu/PduBody;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v1

    .line 288
    .local v1, "smilPart":Lcom/motorola/messaging/pdu/PduPart;
    const/4 v0, 0x0

    .line 291
    .local v0, "document":Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_2

    .line 292
    invoke-static {v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->getSmilDocument(Lcom/motorola/messaging/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 293
    invoke-static {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->appendSmilDocument(Lcom/motorola/messaging/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 300
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_4

    .line 302
    :cond_3
    invoke-static {p0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->createSmilDocument(Lcom/motorola/messaging/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 305
    :cond_4
    return-object v0
.end method

.method private static getSmilDocument(Lcom/motorola/messaging/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6
    .param p0, "smilPart"    # Lcom/motorola/messaging/pdu/PduPart;

    .prologue
    .line 903
    sget-boolean v4, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 904
    const-string v4, "SmilHelper"

    const-string v5, "getSmilDocument(PduPart)"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 909
    .local v1, "data":[B
    if-eqz v1, :cond_2

    .line 910
    sget-boolean v4, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 911
    const-string v4, "SmilHelper"

    const-string v5, "Parsing SMIL document."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 919
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/motorola/messaging/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/motorola/messaging/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 930
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "data":[B
    :goto_0
    return-object v2

    .line 923
    :catch_0
    move-exception v3

    .line 924
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 930
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 925
    :catch_1
    move-exception v3

    .line 926
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 927
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 928
    .local v3, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 1001
    .local p1, "srcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 1002
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/motorola/messaging/model/MediaModelFactory;->formatSrc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "sName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    const/4 v1, 0x1

    .line 1007
    .end local v0    # "sName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static partIsInSmilDocument(Lcom/motorola/messaging/pdu/PduPart;Ljava/util/List;)Z
    .locals 2
    .param p0, "part"    # Lcom/motorola/messaging/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/pdu/PduPart;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "srcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 990
    if-nez p1, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->isInSourcesList([BLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/List;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Z
    .locals 5
    .param p0, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p2, "smilLayout"    # Lorg/w3c/dom/smil/SMILLayoutElement;
    .param p3, "regionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1324
    .local p1, "smilRegions":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 1325
    const-string v2, "SmilHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRegion, regionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_0
    const/4 v0, 0x0

    .line 1329
    .local v0, "result":Z
    invoke-static {p1, p3}, Lcom/motorola/messaging/dom/smil/SmilHelper;->findRegionElementById(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v1

    .line 1330
    .local v1, "smilRegion":Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v1, :cond_1

    .line 1331
    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 1332
    invoke-interface {p2, v1}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1333
    const/4 v0, 0x1

    .line 1336
    :cond_1
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 1337
    const-string v2, "SmilHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRegion -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_2
    return v0
.end method

.method public static showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/GenericPdu;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;

    .prologue
    .line 1389
    sget-boolean v1, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1390
    const-string v1, "SmilHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPdu, pdu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    instance-of v1, p1, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    if-nez v1, :cond_1

    .line 1393
    const-string v1, "SmilHelper"

    const-string v2, "showPdu for invalid instance"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .end local p1    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    :cond_0
    :goto_0
    return-void

    .line 1397
    .restart local p1    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    :cond_1
    check-cast p1, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    .end local p1    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v0

    .line 1398
    .local v0, "body":Lcom/motorola/messaging/pdu/PduBody;
    invoke-static {p0, v0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/PduBody;)V

    goto :goto_0
.end method

.method public static showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/PduBody;)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "body"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 1422
    sget-boolean v5, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 1423
    if-nez p1, :cond_1

    .line 1424
    const-string v5, "SmilHelper"

    const-string v6, "PDU invalid, body null"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 1429
    .local v4, "partNum":I
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - num parts:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_a

    .line 1433
    invoke-virtual {p1, v2}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v3

    .line 1435
    .local v3, "part":Lcom/motorola/messaging/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 1436
    .local v0, "contentType":Ljava/lang/String;
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - part number:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - content type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - charset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v1

    .line 1442
    .local v1, "data":[B
    if-eqz v1, :cond_2

    .line 1443
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_2
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v1

    .line 1447
    if-eqz v1, :cond_3

    .line 1448
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - file name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    :cond_3
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 1452
    if-eqz v1, :cond_9

    .line 1453
    array-length v5, v1

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_8

    .line 1454
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - data too big, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :goto_2
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v1

    .line 1465
    if-eqz v1, :cond_4

    .line 1466
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - content id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :cond_4
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 1470
    if-eqz v1, :cond_5

    .line 1471
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - content location:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    :cond_5
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getContentDisposition()[B

    move-result-object v1

    .line 1475
    if-eqz v1, :cond_6

    .line 1476
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - content disposition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_6
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v1

    .line 1480
    if-eqz v1, :cond_7

    .line 1481
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU - content transfer encoding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1457
    :cond_8
    const-string v5, "SmilHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDU data is binary, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1461
    :cond_9
    const-string v5, "SmilHelper"

    const-string v6, "PDU - data is null"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1485
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v3    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_a
    const-string v5, "SmilHelper"

    const-string v6, "PDU - finished"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static showPdu(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 1406
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 1407
    if-nez p1, :cond_1

    .line 1408
    const-string v2, "SmilHelper"

    const-string v3, "invalid PDU, null"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    new-instance v0, Lcom/motorola/messaging/dom/smil/PduHelper;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/dom/smil/PduHelper;-><init>([B)V

    .line 1413
    .local v0, "PduHelper":Lcom/motorola/messaging/dom/smil/PduHelper;
    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/PduHelper;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v1

    .line 1414
    .local v1, "body":Lcom/motorola/messaging/pdu/PduBody;
    invoke-static {p0, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/PduBody;)V

    goto :goto_0
.end method

.method public static validateMTMms(Lcom/motorola/messaging/pdu/GenericPdu;)V
    .locals 5
    .param p0, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;

    .prologue
    .line 369
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 370
    const-string v2, "SmilHelper"

    const-string v3, "validateMTMms - START"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    :try_start_0
    instance-of v2, p0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 388
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 389
    const-string v2, "SmilHelper"

    const-string v3, "validateMTMms - END"

    .end local p0    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    .local v0, "body":Lcom/motorola/messaging/pdu/PduBody;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    return-void

    .line 378
    .end local v0    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    :cond_2
    :try_start_1
    check-cast p0, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    .end local p0    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual {p0}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v0

    .line 379
    .restart local v0    # "body":Lcom/motorola/messaging/pdu/PduBody;
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 381
    const-string v2, "MT MMS processed by framework"

    invoke-static {v2, v0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/PduBody;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :cond_3
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 389
    const-string v2, "SmilHelper"

    const-string v3, "validateMTMms - END"

    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SmilHelper"

    const-string v3, "exception to validate MT MMS"

    invoke-static {v2, v3, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    sget-boolean v2, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 389
    const-string v2, "SmilHelper"

    const-string v3, "validateMTMms - END"

    goto :goto_0

    .line 388
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    sget-boolean v3, Lcom/motorola/messaging/dom/smil/SmilHelper;->LOCAL_LOG:Z

    if-eqz v3, :cond_4

    .line 389
    const-string v3, "SmilHelper"

    const-string v4, "validateMTMms - END"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_4
    throw v2
.end method
