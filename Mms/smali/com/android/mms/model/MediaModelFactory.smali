.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regionModel"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/android/mms/model/TextModel;

    const-string v1, "text/plain"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    return-object v0
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 4
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_0

    .line 63
    invoke-static {p1}, Lcom/android/mms/model/MediaModelFactory;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    const-string v2, "cid:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Lcom/android/mms/model/MediaModelFactory;->getPartByContentId(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 94
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 95
    return-object v1

    .line 68
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/model/MediaModelFactory;->getPartByContentId(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 80
    if-nez v1, :cond_0

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 81
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    goto :goto_0

    .line 98
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No part found for the model."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p4, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p5, "regionModel"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    .line 159
    .local v9, "bytes":[B
    if-nez v9, :cond_0

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content-Type of the part may not be null."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    .line 165
    .local v3, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 166
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 201
    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    :goto_0
    const/4 v8, 0x0

    .line 202
    .local v8, "begin":I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v12

    .line 203
    .local v12, "tl":Lorg/w3c/dom/smil/TimeList;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    .line 205
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 206
    .local v11, "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-int v8, v4

    .line 208
    .end local v11    # "t":Lorg/w3c/dom/smil/Time;
    :cond_1
    invoke-virtual {v1, v8}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 211
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v2

    const/high16 v4, 0x447a0000

    mul-float/2addr v2, v4

    float-to-int v10, v2

    .line 212
    .local v10, "duration":I
    if-gtz v10, :cond_3

    .line 213
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v12

    .line 214
    if-eqz v12, :cond_3

    invoke-interface {v12}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 216
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 217
    .restart local v11    # "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    sub-int v10, v2, v8

    .line 220
    if-nez v10, :cond_3

    instance-of v2, v1, Lcom/android/mms/model/AudioModel;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/android/mms/model/VideoModel;

    if-eqz v2, :cond_3

    .line 222
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v10

    .line 223
    const-string v2, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    const-string v2, "Mms:media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaModelFactory] compute new duration for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v11    # "t":Lorg/w3c/dom/smil/Time;
    :cond_3
    invoke-virtual {v1, v10}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 234
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 246
    :goto_1
    return-object v1

    .line 169
    .end local v8    # "begin":I
    .end local v10    # "duration":I
    .end local v12    # "tl":Lorg/w3c/dom/smil/TimeList;
    :cond_4
    const-string v2, "img"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 172
    :cond_5
    const-string v2, "video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 175
    :cond_6
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 176
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v3, p2, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 178
    :cond_7
    const-string v2, "ref"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 179
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 180
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 182
    :cond_8
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 183
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 185
    :cond_9
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 186
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 188
    :cond_a
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 189
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v3, p2, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 192
    :cond_b
    const-string v2, "Mms:media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaModelFactory] getGenericMediaModel Unsupported Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p5

    invoke-static {p0, v0}, Lcom/android/mms/model/MediaModelFactory;->createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    goto/16 :goto_0

    .line 197
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported TAG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    .restart local v8    # "begin":I
    .restart local v10    # "duration":I
    .restart local v12    # "tl":Lorg/w3c/dom/smil/TimeList;
    :cond_d
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    goto/16 :goto_1
.end method

.method public static getMediaModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, "media":Lcom/android/mms/model/MediaModel;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 262
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCalendarType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    new-instance v1, Lcom/android/mms/model/ICalModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/model/ICalModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 268
    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_0
    return-object v1

    .line 264
    :cond_1
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVCardType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    new-instance v1, Lcom/android/mms/model/VcardModel;

    .end local v1    # "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/model/VcardModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v1    # "media":Lcom/android/mms/model/MediaModel;
    goto :goto_0
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p2, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "tag":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "src":Ljava/lang/String;
    invoke-static {p3, v2}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 50
    .local v5, "part":Lcom/google/android/mms/pdu/PduPart;
    instance-of v0, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v0, :cond_0

    move-object v3, p1

    .line 51
    check-cast v3, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    move-object v9, p1

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPartByContentId(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 3
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p4, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p5, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v7

    .line 125
    .local v7, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v7, :cond_0

    .line 126
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 127
    .local v5, "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 128
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 131
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v6, 0x0

    .line 133
    .local v6, "rId":Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string v6, "Text"

    .line 139
    :goto_1
    invoke-virtual {p4, v6}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 140
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 136
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v6, "Image"

    goto :goto_1

    .line 145
    .end local v6    # "rId":Ljava/lang/String;
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
