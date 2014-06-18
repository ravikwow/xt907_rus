.class public Lcom/android/vcard/VCardUtilsExt;
.super Ljava/lang/Object;
.source "VCardUtilsExt.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static final getDefaultExportCharset(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "vcardType"    # I
    .param p1, "defaultCharset"    # Ljava/lang/String;

    .prologue
    .line 282
    move-object v0, p1

    .line 284
    .local v0, "charset":Ljava/lang/String;
    and-int/lit8 v3, p0, 0x3

    .line 286
    .local v3, "version":I
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "exportCharsetByVersion":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 291
    aget-object v0, v2, v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2    # "exportCharsetByVersion":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config_vcard_export_charset_by_version Not Found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final getDefaultImportCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "defaultCharset"    # Ljava/lang/String;

    .prologue
    .line 261
    move-object v0, p0

    .line 264
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040656

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "importCharsetToBeConsidered":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    move-object v0, v2

    .line 273
    .end local v2    # "importCharsetToBeConsidered":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "vCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_vcard_import_charset_to_be_considered Not Found. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMissingCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultCharset"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {v0, p1}, Lcom/android/vcard/VCardUtilsExt;->getMissingCharset(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMissingCharset(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/vcard/VCardUtilsExt;->getDefaultImportCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    .end local p1    # "defaultCharset":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 243
    .restart local p1    # "defaultCharset":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .line 244
    .local v2, "targetCharset":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    .local v3, "value":Ljava/lang/String;
    const-string v4, "EUC-KR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/android/vcard/VCardUtilsExt;->isIncludeEucKr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    move-object v2, v0

    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object p1, v2

    .line 253
    goto :goto_0

    .line 248
    .restart local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v4, "SHIFT_JIS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/android/vcard/VCardUtilsExt;->isIncludeShiftJIS(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    move-object v2, v0

    .line 250
    goto :goto_1
.end method

.method private static isAscii(B)Z
    .locals 1
    .param p0, "bytes"    # B

    .prologue
    .line 54
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEucKrKorean([B)Z
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "euckr_flag":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 88
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtilsExt;->isAscii(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p0, v1}, Lcom/android/vcard/VCardUtilsExt;->isEucKrStraight([BI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    add-int/lit8 v1, v1, 0x2

    .line 93
    const/4 v0, 0x1

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 99
    .end local v0    # "euckr_flag":Z
    :cond_2
    return v0
.end method

.method private static isEucKrStraight([BI)Z
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    add-int/lit8 v2, p1, 0x1

    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    .local v0, "tmp_char":C
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-char v0, v2

    .line 74
    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-char v0, v2

    .line 75
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    or-int/2addr v2, v0

    int-to-char v0, v2

    .line 77
    const v2, 0xb0a1

    if-lt v0, v2, :cond_0

    const v2, 0xc8fe

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isIncludeEucKr(Ljava/lang/String;)Z
    .locals 5
    .param p0, "Code"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 106
    .local v0, "codeBytes":[B
    :try_start_0
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0}, Lcom/android/vcard/VCardUtilsExt;->isEucKrKorean([B)Z

    move-result v2

    .line 115
    :cond_0
    return v2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "vCard"

    const-string v4, "# isIncludeEucKr | getBytes error! "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isIncludeShiftJIS(Ljava/lang/String;)Z
    .locals 5
    .param p0, "Code"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 205
    .local v0, "codeBytes":[B
    :try_start_0
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    if-eqz v0, :cond_0

    .line 211
    invoke-static {v0}, Lcom/android/vcard/VCardUtilsExt;->isShiftJISJapanese([B)Z

    move-result v2

    .line 214
    :cond_0
    return v2

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "vCard"

    const-string v4, "# isIncludeShiftJIS | getBytes error! "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isKatakana(B)Z
    .locals 1
    .param p0, "bytes"    # B

    .prologue
    .line 126
    const/16 v0, -0x5f

    if-lt p0, v0, :cond_0

    const/16 v0, -0x21

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShiftJISJapanese([B)Z
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "shiftJIS_flag":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 173
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/android/vcard/VCardUtilsExt;->isAscii(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/android/vcard/VCardUtilsExt;->isKatakana(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    add-int/lit8 v0, v0, 0x1

    .line 178
    const/4 v1, 0x1

    .line 179
    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtilsExt;->isShiftJISStraight([BI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    add-int/lit8 v0, v0, 0x2

    .line 183
    const/4 v1, 0x1

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    const/4 v1, 0x0

    .line 191
    .end local v1    # "shiftJIS_flag":Z
    :cond_3
    return v1
.end method

.method private static isShiftJISStraight([BI)Z
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 141
    add-int/lit8 v3, p1, 0x1

    array-length v4, p0

    if-lt v3, v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v2

    .line 145
    :cond_1
    const/4 v0, 0x0

    .line 146
    .local v0, "first_byte":C
    const/4 v1, 0x0

    .line 148
    .local v1, "second_byte":C
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    int-to-char v0, v3

    .line 151
    const/16 v3, 0x81

    if-lt v0, v3, :cond_2

    const/16 v3, 0x9f

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xe0

    if-lt v0, v3, :cond_0

    const/16 v3, 0xef

    if-gt v0, v3, :cond_0

    .line 154
    :cond_3
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v1, v3

    .line 155
    const/16 v3, 0x40

    if-lt v1, v3, :cond_4

    const/16 v3, 0x7e

    if-le v1, v3, :cond_5

    :cond_4
    const/16 v3, 0x80

    if-lt v1, v3, :cond_0

    const/16 v3, 0xfc

    if-gt v1, v3, :cond_0

    .line 157
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method
