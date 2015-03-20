.class public Lcom/motorola/blur/util/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BASE64_PAD:C = '='

.field public static final CONNECTION_TIMEOUT:I = 0x7530

.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final MOD_UTF7_END_SHIFT_CHAR:C = '-'

.field private static final MOD_UTF7_FIRST:C = ' '

.field private static final MOD_UTF7_LAST:C = '~'

.field private static final MOD_UTF7_START_SHIFT_CHAR:C = '&'

.field public static final SOCKET_TIMEOUT:I = 0x2bf20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 109
    if-eqz p0, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .param p0, "r"    # Ljava/io/Reader;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .param p0, "w"    # Ljava/io/Writer;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "count":I
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 205
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 206
    .local v2, "read":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 207
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 208
    add-int/2addr v1, v2

    goto :goto_0

    .line 210
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "w"    # Ljava/io/PrintWriter;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/blur/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "w"    # Ljava/io/PrintWriter;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 68
    .local v2, "r":Ljava/io/BufferedReader;
    const/4 v5, -0x1

    if-ne p3, v5, :cond_1

    const v3, 0x7fffffff

    .line 69
    .local v3, "toCopy":I
    :goto_0
    const-string v5, "line.separator"

    const-string v6, "\n"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 70
    .local v1, "newlineLen":I
    :goto_1
    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    if-ltz p3, :cond_3

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v4, v5, v1

    .line 76
    .local v4, "writeCount":I
    if-le v4, v3, :cond_2

    .line 78
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .end local v0    # "line":Ljava/lang/String;
    .end local v4    # "writeCount":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 87
    return-void

    .end local v1    # "newlineLen":I
    .end local v3    # "toCopy":I
    :cond_1
    move v3, p3

    .line 68
    goto :goto_0

    .line 82
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "newlineLen":I
    .restart local v3    # "toCopy":I
    .restart local v4    # "writeCount":I
    :cond_2
    sub-int/2addr v3, v4

    .line 84
    .end local v4    # "writeCount":I
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static modifiedUTF7Decode([B)Ljava/lang/String;
    .locals 15
    .param p0, "bytes"    # [B

    .prologue
    .line 298
    array-length v6, p0

    .line 299
    .local v6, "len":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v9, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_7

    .line 301
    aget-byte v1, p0, v4

    .line 303
    .local v1, "c":B
    const/16 v13, 0x26

    if-ne v1, v13, :cond_6

    .line 304
    add-int/lit8 v4, v4, 0x1

    .line 305
    move v10, v4

    .line 306
    .local v10, "start":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-byte v1, p0, v4

    const/16 v13, 0x2d

    if-eq v1, v13, :cond_0

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 309
    :cond_0
    sub-int v12, v4, v10

    .line 310
    .local v12, "sublen":I
    if-nez v12, :cond_2

    .line 312
    const/16 v13, 0x26

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    .end local v10    # "start":I
    .end local v12    # "sublen":I
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 315
    .restart local v10    # "start":I
    .restart local v12    # "sublen":I
    :cond_2
    rsub-int/lit8 v13, v12, 0x4

    and-int/lit8 v8, v13, 0x3

    .line 316
    .local v8, "padding":I
    add-int v7, v12, v8

    .line 317
    .local v7, "paddedLen":I
    new-array v11, v7, [B

    .line 319
    .local v11, "subbytes":[B
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v7, :cond_5

    .line 320
    if-ge v5, v12, :cond_4

    .line 321
    add-int v13, v10, v5

    aget-byte v0, p0, v13

    .line 323
    .local v0, "b":B
    const/16 v13, 0x2c

    if-ne v0, v13, :cond_3

    .line 324
    const/16 v0, 0x2f

    .line 326
    :cond_3
    aput-byte v0, v11, v5

    .line 319
    .end local v0    # "b":B
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 329
    :cond_4
    const/16 v13, 0x3d

    aput-byte v13, v11, v5

    goto :goto_4

    .line 333
    :cond_5
    invoke-static {v11}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    .line 335
    .local v2, "decoded":[B
    array-length v3, v2

    .line 337
    .local v3, "decodedLen":I
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_1

    .line 338
    aget-byte v13, v2, v5

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v5, 0x1

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    .line 343
    .end local v2    # "decoded":[B
    .end local v3    # "decodedLen":I
    .end local v5    # "j":I
    .end local v7    # "paddedLen":I
    .end local v8    # "padding":I
    .end local v10    # "start":I
    .end local v11    # "subbytes":[B
    .end local v12    # "sublen":I
    :cond_6
    int-to-char v13, v1

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 346
    .end local v1    # "c":B
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static modifiedUTF7Encode(Ljava/lang/String;)[B
    .locals 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 231
    .local v7, "len":I
    new-instance v9, Ljava/lang/StringBuilder;

    mul-int/lit8 v13, v7, 0x2

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 232
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_8

    .line 233
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 235
    .local v2, "c":C
    const/16 v13, 0x20

    if-lt v2, v13, :cond_1

    const/16 v13, 0x7e

    if-gt v2, v13, :cond_1

    .line 237
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    const/16 v13, 0x26

    if-ne v2, v13, :cond_0

    .line 240
    const/16 v13, 0x2d

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 244
    :cond_1
    move v10, v5

    .line 246
    .local v10, "start":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 247
    if-ge v5, v7, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v13, 0x20

    if-lt v2, v13, :cond_2

    const/16 v13, 0x7e

    if-gt v2, v13, :cond_2

    .line 248
    :cond_3
    sub-int v11, v5, v10

    .line 250
    .local v11, "sublen":I
    mul-int/lit8 v13, v11, 0x2

    new-array v12, v13, [B

    .line 251
    .local v12, "utf16Bytes":[B
    const/4 v0, 0x0

    .line 252
    .local v0, "byteIndex":I
    move v6, v10

    .local v6, "j":I
    move v1, v0

    .end local v0    # "byteIndex":I
    .local v1, "byteIndex":I
    :goto_2
    if-ge v6, v5, :cond_4

    .line 253
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 254
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "byteIndex":I
    .restart local v0    # "byteIndex":I
    ushr-int/lit8 v13, v2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v12, v1

    .line 255
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteIndex":I
    .restart local v1    # "byteIndex":I
    and-int/lit16 v13, v2, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v0

    .line 252
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 258
    :cond_4
    invoke-static {v12}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    .line 260
    .local v3, "encodedBytes":[B
    const/16 v13, 0x26

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    array-length v4, v3

    .line 262
    .local v4, "encodedLen":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_7

    .line 263
    aget-byte v13, v3, v6

    int-to-char v2, v13

    .line 265
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_6

    .line 266
    const/16 v2, 0x2c

    .line 271
    :cond_5
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 267
    :cond_6
    const/16 v13, 0x3d

    if-ne v2, v13, :cond_5

    .line 273
    :cond_7
    const/16 v13, 0x2d

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    if-ge v5, v7, :cond_0

    .line 276
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 282
    .end local v1    # "byteIndex":I
    .end local v2    # "c":C
    .end local v3    # "encodedBytes":[B
    .end local v4    # "encodedLen":I
    .end local v6    # "j":I
    .end local v10    # "start":I
    .end local v11    # "sublen":I
    .end local v12    # "utf16Bytes":[B
    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 283
    new-array v8, v7, [B

    .line 284
    .local v8, "result":[B
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_9

    .line 285
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v8, v5

    .line 284
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 287
    :cond_9
    return-object v8
.end method

.method public static readBytes(Ljava/io/InputStream;[B)I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "i":I
    array-length v2, p1

    .line 360
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 362
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 363
    if-nez v1, :cond_0

    .line 364
    const/4 v1, -0x1

    .line 370
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 368
    .restart local v0    # "c":I
    :cond_1
    int-to-byte v3, v0

    aput-byte v3, p1, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 155
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/motorola/blur/util/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 187
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 188
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {p0, v0, p1, p2}, Lcom/motorola/blur/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 189
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 190
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
