.class public Lcom/motorola/blur/util/mime/MimeCodec;
.super Ljava/lang/Object;
.source "MimeCodec.java"


# static fields
.field private static final ENCODE_BEGIN:Ljava/lang/String; = "=?"

.field private static final ENCODE_END:Ljava/lang/String; = "?="

.field private static final ENCODE_SEPARATE:Ljava/lang/String; = "?"

.field public static final PATTERN_ENCODED:Ljava/util/regex/Pattern;

.field public static final PATTERN_PARAMETER:Ljava/util/regex/Pattern;

.field public static final SPECIAL_CHARS:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"

.field private static final TAG:Ljava/lang/String; = "MimeCodec"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "=\\?([\\w_-]+)\\?([QBqb])\\?([^\\?]+)\\?="

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/mime/MimeCodec;->PATTERN_ENCODED:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "\"?([\\w_-]+)\\\'\\w*\\\'([^\"]*)\"?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/util/mime/MimeCodec;->PATTERN_PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string v0, "base64"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 400
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 393
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 395
    :cond_2
    const-string v0, "uuencode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x-uuencode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x-uue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static decodeParameter(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Parameter;
    .locals 23
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 255
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 256
    .local v15, "pos":I
    if-ltz v15, :cond_6

    .line 257
    new-instance v14, Lcom/motorola/blur/util/mime/Parameter;

    invoke-direct {v14}, Lcom/motorola/blur/util/mime/Parameter;-><init>()V

    .line 258
    .local v14, "param":Lcom/motorola/blur/util/mime/Parameter;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, "name":Ljava/lang/String;
    add-int/lit8 v21, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 260
    .local v20, "value":Ljava/lang/String;
    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 261
    const-string v21, "\\*"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 262
    .local v19, "tokens":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v12, v19, v21

    .line 263
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 265
    const/16 v21, 0x1

    :try_start_0
    aget-object v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 266
    .local v13, "order":I
    invoke-virtual {v14, v13}, Lcom/motorola/blur/util/mime/Parameter;->setOrder(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v13    # "order":I
    :cond_0
    :goto_0
    invoke-virtual {v14, v12}, Lcom/motorola/blur/util/mime/NameValuePair;->setName(Ljava/lang/String;)V

    .line 272
    sget-object v21, Lcom/motorola/blur/util/mime/MimeCodec;->PATTERN_PARAMETER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 273
    .local v11, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 274
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "charset":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, "text":Ljava/lang/String;
    if-eqz v17, :cond_2

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v10

    .line 280
    .local v10, "len":I
    :goto_1
    new-array v3, v10, [B

    .line 281
    .local v3, "buf":[B
    const/4 v6, 0x0

    .line 282
    .local v6, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    move v7, v6

    .end local v6    # "count":I
    .local v7, "count":I
    :goto_2
    if-ge v9, v10, :cond_3

    .line 283
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 284
    .local v4, "c":C
    const/16 v21, 0x25

    move/from16 v0, v21

    if-ne v4, v0, :cond_1

    .line 285
    add-int/lit8 v21, v9, 0x1

    add-int/lit8 v22, v9, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 286
    .local v16, "s2":Ljava/lang/String;
    const/16 v21, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-char v4, v0

    .line 287
    add-int/lit8 v9, v9, 0x2

    .line 289
    .end local v16    # "s2":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    int-to-byte v0, v4

    move/from16 v21, v0

    aput-byte v21, v3, v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 282
    add-int/lit8 v9, v9, 0x1

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_2

    .line 267
    .end local v3    # "buf":[B
    .end local v4    # "c":C
    .end local v5    # "charset":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v9    # "i":I
    .end local v10    # "len":I
    .end local v11    # "m":Ljava/util/regex/Matcher;
    .end local v17    # "text":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 268
    .local v8, "ex":Ljava/lang/NumberFormatException;
    const-string v21, "MimeCodec"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v8, v1}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0

    .line 279
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .restart local v5    # "charset":Ljava/lang/String;
    .restart local v11    # "m":Ljava/util/regex/Matcher;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 292
    .restart local v3    # "buf":[B
    .restart local v7    # "count":I
    .restart local v9    # "i":I
    .restart local v10    # "len":I
    :cond_3
    :try_start_2
    new-instance v18, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v3, v1, v7, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v17    # "text":Ljava/lang/String;
    .local v18, "text":Ljava/lang/String;
    move-object/from16 v17, v18

    .line 301
    .end local v3    # "buf":[B
    .end local v7    # "count":I
    .end local v9    # "i":I
    .end local v10    # "len":I
    .end local v18    # "text":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/motorola/blur/util/mime/NameValuePair;->setValue(Ljava/lang/String;)V

    .line 311
    .end local v5    # "charset":Ljava/lang/String;
    .end local v11    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "param":Lcom/motorola/blur/util/mime/Parameter;
    .end local v17    # "text":Ljava/lang/String;
    .end local v19    # "tokens":[Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :goto_4
    return-object v14

    .line 293
    .restart local v5    # "charset":Ljava/lang/String;
    .restart local v11    # "m":Ljava/util/regex/Matcher;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "param":Lcom/motorola/blur/util/mime/Parameter;
    .restart local v17    # "text":Ljava/lang/String;
    .restart local v19    # "tokens":[Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 294
    .local v8, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v21, "MimeCodec"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v8, v1}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_3

    .line 295
    .end local v8    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v8

    .line 296
    .local v8, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v21, "MimeCodec"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v8, v1}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_3

    .line 297
    .end local v8    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_3
    move-exception v8

    .line 298
    .local v8, "ex":Ljava/lang/NumberFormatException;
    const-string v21, "MimeCodec"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v8, v1}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_3

    .line 303
    .end local v5    # "charset":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .end local v17    # "text":Ljava/lang/String;
    :cond_4
    invoke-static/range {v20 .. v20}, Lcom/motorola/blur/util/mime/MimeCodec;->unquoteWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/motorola/blur/util/mime/NameValuePair;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 306
    .end local v11    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "tokens":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v14, v12}, Lcom/motorola/blur/util/mime/NameValuePair;->setName(Ljava/lang/String;)V

    .line 307
    invoke-static/range {v20 .. v20}, Lcom/motorola/blur/util/mime/MimeCodec;->unquoteWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/motorola/blur/util/mime/NameValuePair;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 311
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "param":Lcom/motorola/blur/util/mime/Parameter;
    .end local v20    # "value":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    goto :goto_4
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "word"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v15, Lcom/motorola/blur/util/mime/MimeCodec;->PATTERN_ENCODED:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 155
    .local v9, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 156
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v12, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 159
    .local v6, "end":I
    :cond_0
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "charset":Ljava/lang/String;
    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "encoding":Ljava/lang/String;
    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "body":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "javaCharset":Ljava/lang/String;
    const/4 v11, 0x0

    .line 164
    .local v11, "repl":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "=?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, "text":Ljava/lang/String;
    :try_start_0
    const-string v15, "Q"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 168
    new-instance v10, Lorg/apache/commons/codec/net/QCodec;

    invoke-direct {v10, v3}, Lorg/apache/commons/codec/net/QCodec;-><init>(Ljava/lang/String;)V

    .line 169
    .local v10, "qcodec":Lorg/apache/commons/codec/net/QCodec;
    invoke-virtual {v10, v14}, Lorg/apache/commons/codec/net/QCodec;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 180
    .end local v10    # "qcodec":Lorg/apache/commons/codec/net/QCodec;
    :goto_0
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    .line 181
    .local v13, "start":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "leading":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 184
    :cond_1
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 188
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_0

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/motorola/blur/util/mime/MimeCodec;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 192
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "charset":Ljava/lang/String;
    .end local v5    # "encoding":Ljava/lang/String;
    .end local v6    # "end":I
    .end local v7    # "javaCharset":Ljava/lang/String;
    .end local v8    # "leading":Ljava/lang/String;
    .end local v11    # "repl":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "start":I
    .end local v14    # "text":Ljava/lang/String;
    .end local p0    # "word":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p0

    .line 170
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "charset":Ljava/lang/String;
    .restart local v5    # "encoding":Ljava/lang/String;
    .restart local v6    # "end":I
    .restart local v7    # "javaCharset":Ljava/lang/String;
    .restart local v11    # "repl":Ljava/lang/String;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "text":Ljava/lang/String;
    .restart local p0    # "word":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v15, "B"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 171
    new-instance v1, Lorg/apache/commons/codec/net/BCodec;

    invoke-direct {v1, v3}, Lorg/apache/commons/codec/net/BCodec;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "bcodec":Lorg/apache/commons/codec/net/BCodec;
    invoke-virtual {v1, v14}, Lorg/apache/commons/codec/net/BCodec;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 173
    goto :goto_0

    .line 176
    .end local v1    # "bcodec":Lorg/apache/commons/codec/net/BCodec;
    :catch_0
    move-exception v4

    .line 177
    .local v4, "e":Lorg/apache/commons/codec/DecoderException;
    const-string v15, "MimeCodec"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v4, v0}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static encodeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    sget-object v0, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_ENCODE_CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/motorola/blur/util/mime/MimeCodec;->encodeParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "parameter"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/motorola/blur/util/mime/MimeCodec;->isASCII(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 218
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 220
    .local v2, "buf":[B
    const-string v8, "*=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-byte v1, v0, v5

    .line 222
    .local v1, "b":B
    and-int/lit16 v3, v1, 0xff

    .line 223
    .local v3, "c":I
    const/16 v8, 0x10

    if-ge v3, v8, :cond_0

    .line 224
    const-string v8, "%0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const/16 v8, 0x7f

    if-ge v3, v8, :cond_1

    const/16 v8, 0x20

    if-le v3, v8, :cond_1

    const/16 v8, 0x28

    if-eq v3, v8, :cond_1

    const/16 v8, 0x29

    if-eq v3, v8, :cond_1

    const/16 v8, 0x3c

    if-eq v3, v8, :cond_1

    const/16 v8, 0x3e

    if-eq v3, v8, :cond_1

    const/16 v8, 0x40

    if-eq v3, v8, :cond_1

    const/16 v8, 0x2c

    if-eq v3, v8, :cond_1

    const/16 v8, 0x3b

    if-eq v3, v8, :cond_1

    const/16 v8, 0x3a

    if-eq v3, v8, :cond_1

    const/16 v8, 0x5c

    if-eq v3, v8, :cond_1

    const/16 v8, 0x22

    if-eq v3, v8, :cond_1

    const/16 v8, 0x5b

    if-eq v3, v8, :cond_1

    const/16 v8, 0x5d

    if-eq v3, v8, :cond_1

    const/16 v8, 0x2a

    if-eq v3, v8, :cond_1

    const/16 v8, 0x27

    if-eq v3, v8, :cond_1

    if-ne v3, v10, :cond_3

    .line 229
    :cond_1
    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v8, "MimeCodec"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v4, v9}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 240
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    const-string v8, "=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    return-object v8

    .line 231
    .restart local v0    # "arr$":[B
    .restart local v1    # "b":B
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_3
    int-to-char v8, v1

    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 234
    .end local v1    # "b":B
    .end local v3    # "c":I
    :cond_4
    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_2
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_ENCODE_CHARSET:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/blur/util/mime/MimeCodec;->encodeWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/blur/util/mime/MimeCodec;->encodeWord(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "singleLine"    # Z

    .prologue
    const/4 v12, 0x0

    .line 94
    if-nez p0, :cond_1

    .line 95
    const/4 p0, 0x0

    .line 140
    .end local p0    # "word":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 98
    .restart local p0    # "word":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/motorola/blur/util/mime/MimeCodec;->isASCII(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 103
    if-eqz p2, :cond_2

    .line 104
    :try_start_0
    new-instance v3, Lorg/apache/commons/codec/net/QCodec;

    invoke-direct {v3, p1}, Lorg/apache/commons/codec/net/QCodec;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, "codec":Lorg/apache/commons/codec/net/QCodec;
    invoke-virtual {v3, p0}, Lorg/apache/commons/codec/net/QCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 108
    .end local v3    # "codec":Lorg/apache/commons/codec/net/QCodec;
    :cond_2
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v6

    .line 109
    .local v6, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 110
    .local v2, "cb":Ljava/nio/CharBuffer;
    const/16 v10, 0x30

    new-array v1, v10, [B

    .line 111
    .local v1, "buf":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    .line 114
    .local v7, "first":Z
    const/4 v4, 0x0

    .line 116
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v6, v2, v0, v10}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 117
    if-eqz v7, :cond_4

    .line 118
    const/4 v7, 0x0

    .line 122
    :goto_1
    const-string v10, "=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v10, "?B?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 127
    .local v8, "len":I
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v1, v10, v8, v11}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v10, "?="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 132
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v10

    if-nez v10, :cond_3

    .line 134
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 120
    .end local v8    # "len":I
    :cond_4
    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 135
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":[B
    .end local v2    # "cb":Ljava/nio/CharBuffer;
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    .end local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v7    # "first":Z
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/nio/charset/UnsupportedCharsetException;
    const-string v10, "MimeCodec"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v5, v11}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0

    .line 137
    .end local v5    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v5

    .line 138
    .local v5, "e":Lorg/apache/commons/codec/EncoderException;
    const-string v10, "MimeCodec"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v5, v11}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public static getASCIIBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 327
    .local v1, "chars":[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 328
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 329
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-object v0
.end method

.method public static getDecodeCharset(Lcom/motorola/blur/util/mime/ContentType;)Ljava/lang/String;
    .locals 2
    .param p0, "contentType"    # Lcom/motorola/blur/util/mime/ContentType;

    .prologue
    .line 404
    if-nez p0, :cond_2

    const/4 v0, 0x0

    .line 405
    .local v0, "charSet":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 406
    :cond_0
    sget-object v0, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_DECODE_CHARSET:Ljava/lang/String;

    .line 408
    :cond_1
    return-object v0

    .line 404
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEncodeCharset(Lcom/motorola/blur/util/mime/ContentType;)Ljava/lang/String;
    .locals 2
    .param p0, "contentType"    # Lcom/motorola/blur/util/mime/ContentType;

    .prologue
    .line 412
    if-nez p0, :cond_2

    const/4 v0, 0x0

    .line 413
    .local v0, "charSet":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 414
    :cond_0
    sget-object v0, Lcom/motorola/blur/util/os/CharsetUtil;->DEFAULT_ENCODE_CHARSET:Ljava/lang/String;

    .line 416
    :cond_1
    return-object v0

    .line 412
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isASCII(Ljava/lang/String;)Z
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 316
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 317
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 318
    .local v0, "c":C
    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    .line 319
    const/4 v3, 0x0

    .line 322
    .end local v0    # "c":C
    :goto_1
    return v3

    .line 316
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "c":C
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method static parseCommentBody(Ljava/io/StringReader;)V
    .locals 4
    .param p0, "sr"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    :cond_0
    invoke-static {p0}, Lcom/motorola/blur/util/mime/MimeCodec;->skipSpaces(Ljava/io/StringReader;)V

    .line 467
    invoke-virtual {p0}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 468
    .local v0, "c":I
    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 469
    invoke-static {p0}, Lcom/motorola/blur/util/mime/MimeCodec;->parseCommentBody(Ljava/io/StringReader;)V

    .line 477
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 478
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unterminated comment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_2
    const/16 v1, 0x29

    if-ne v0, v1, :cond_3

    .line 471
    return-void

    .line 472
    :cond_3
    const/16 v1, 0x80

    if-lt v0, v1, :cond_4

    .line 473
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected char code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_4
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 475
    invoke-virtual {p0}, Ljava/io/StringReader;->read()I

    move-result v0

    goto :goto_0
.end method

.method static parseComments(Ljava/io/StringReader;)V
    .locals 2
    .param p0, "sr"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    :goto_0
    invoke-static {p0}, Lcom/motorola/blur/util/mime/MimeCodec;->skipSpaces(Ljava/io/StringReader;)V

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/StringReader;->mark(I)V

    .line 441
    invoke-virtual {p0}, Ljava/io/StringReader;->read()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 442
    invoke-static {p0}, Lcom/motorola/blur/util/mime/MimeCodec;->parseCommentBody(Ljava/io/StringReader;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Ljava/io/StringReader;->reset()V

    .line 445
    return-void
.end method

.method static parseUri(Ljava/io/StringReader;)Ljava/lang/String;
    .locals 3
    .param p0, "sr"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/motorola/blur/util/mime/MimeCodec;->skipSpaces(Ljava/io/StringReader;)V

    .line 487
    :goto_0
    invoke-virtual {p0}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 488
    .local v0, "c":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 489
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 491
    :cond_1
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static quoteWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/motorola/blur/util/mime/MimeCodec;->quoteWord(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quoteWord(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "includeSpace"    # Z

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 339
    const/4 v5, 0x0

    .line 341
    .local v5, "needQuote":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 342
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_a

    .line 343
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    .local v0, "c":C
    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_5

    .line 345
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 348
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 349
    .local v1, "c1":C
    if-eq v1, v8, :cond_1

    if-ne v1, v9, :cond_2

    .line 350
    :cond_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    .end local v1    # "c1":C
    :cond_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 370
    .end local v0    # "c":C
    .end local v3    # "k":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "word":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object p0

    .line 357
    .restart local v0    # "c":C
    .restart local p0    # "word":Ljava/lang/String;
    :cond_5
    if-nez p1, :cond_7

    if-ne v0, v10, :cond_7

    .line 342
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_7
    if-ge v0, v10, :cond_8

    const/16 v7, 0xd

    if-eq v0, v7, :cond_8

    const/16 v7, 0xa

    if-ne v0, v7, :cond_9

    :cond_8
    const/16 v7, 0x7f

    if-ge v0, v7, :cond_9

    const-string v7, "()<>@,;:\\\"\t .[]"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_6

    .line 361
    :cond_9
    const/4 v5, 0x1

    goto :goto_3

    .line 365
    .end local v0    # "c":C
    :cond_a
    if-eqz v5, :cond_4

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static skipCommentsForContentLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "contentLocation"    # Ljava/lang/String;

    .prologue
    .line 426
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "sr":Ljava/io/StringReader;
    const-string v2, ""

    .line 429
    .local v2, "uri":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->parseComments(Ljava/io/StringReader;)V

    .line 430
    invoke-static {v1}, Lcom/motorola/blur/util/mime/MimeCodec;->parseUri(Ljava/io/StringReader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 434
    :goto_0
    return-object v2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MimeCodec"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static skipSpaces(Ljava/io/StringReader;)V
    .locals 3
    .param p0, "sr"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 453
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/StringReader;->mark(I)V

    .line 454
    invoke-virtual {p0}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 455
    .local v0, "c":I
    if-eq v0, v2, :cond_1

    .line 456
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 457
    invoke-virtual {p0}, Ljava/io/StringReader;->reset()V

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_1
    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method public static unfold(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "delSP"    # Z

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    const-string v0, "\\r\\n([ \\t])"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\r\\n([ \\t])"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unquoteWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "wordToUnquote"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 381
    move-object v0, p0

    .line 382
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 384
    const-string v1, "\\\\\\\\"

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "\\\\\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    return-object v0
.end method
