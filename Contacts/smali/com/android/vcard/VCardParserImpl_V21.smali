.class Lcom/android/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field protected mCurrentCharset:Ljava/lang/String;

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field private final mInterpreterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field protected mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcardType"    # I

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 161
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 866
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 853
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, "propertyName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 863
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 921
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 922
    .local v0, "colonIndex":I
    if-le v0, v4, :cond_2

    .line 923
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 927
    .local v2, "semiColonIndex":I
    if-ne v0, v4, :cond_0

    .line 928
    move v1, v2

    .line 934
    .local v1, "minIndex":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 936
    .end local v1    # "minIndex":I
    .end local v2    # "semiColonIndex":I
    :goto_1
    return-object v3

    .line 929
    .restart local v2    # "semiColonIndex":I
    :cond_0
    if-ne v2, v4, :cond_1

    .line 930
    move v1, v0

    .restart local v1    # "minIndex":I
    goto :goto_0

    .line 932
    .end local v1    # "minIndex":I
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "minIndex":I
    goto :goto_0

    .line 936
    .end local v1    # "minIndex":I
    .end local v2    # "semiColonIndex":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 803
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 805
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 806
    .local v2, "pos":I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 815
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 817
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 819
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 820
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 822
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 825
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 831
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local p1    # "firstString":Ljava/lang/String;
    :cond_4
    return-object p1
.end method

.method private handleAdrOrgN(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "propertyRawValue"    # Ljava/lang/String;
    .param p3, "sourceCharset"    # Ljava/lang/String;
    .param p4, "targetCharset"    # Ljava/lang/String;
    .param p5, "isCharsetMissing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v3, "encodedValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v13, "QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 732
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 736
    .local v7, "quotedPrintablePart":Ljava/lang/String;
    invoke-virtual {p1, v7}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v12

    invoke-static {v7, v12}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 744
    .local v9, "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 745
    move-object/from16 v0, p4

    invoke-static {v9, v0}, Lcom/android/vcard/VCardUtilsExt;->getMissingCharset(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 749
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 750
    .local v8, "quotedPrintableValue":Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v8, v12, v0, v1}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, "encoded":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 755
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "quotedPrintablePart":Ljava/lang/String;
    .end local v8    # "quotedPrintableValue":Ljava/lang/String;
    .end local v9    # "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 756
    .local v6, "propertyValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v12

    invoke-static {v6, v12}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 759
    .local v11, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_2

    .line 760
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lcom/android/vcard/VCardUtilsExt;->getMissingCharset(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 763
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 764
    .local v10, "rawValue":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v10, v0, v1}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 769
    .end local v6    # "propertyValue":Ljava/lang/String;
    .end local v10    # "rawValue":Ljava/lang/String;
    .end local v11    # "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 770
    iget-object v12, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardInterpreter;

    .line 771
    .local v5, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v5, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_2

    .line 773
    .end local v5    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_4
    return-void
.end method

.method private handleNest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 349
    .local v1, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_0

    .line 351
    .end local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 352
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 353
    .restart local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_1

    .line 355
    .end local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_1
    return-void
.end method

.method private isAsciiLetter(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 556
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 557
    :cond_1
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 4
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "propertyNameUpper"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "propertyRawValue":Ljava/lang/String;
    const-string v1, "AGENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAgent(Lcom/android/vcard/VCardProperty;)V

    .line 345
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const-string v1, "VERSION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    new-instance v1, Lcom/android/vcard/exception/VCardVersionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    new-instance v1, Lcom/android/vcard/exception/VCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown property name: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseOneVCard()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v3, "8BIT"

    iput-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 217
    const-string v3, "UTF-8"

    iput-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "allowGarbage":Z
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    const/4 v3, 0x0

    .line 230
    :goto_0
    return v3

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardInterpreter;

    .line 224
    .local v2, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v2}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_1

    .line 226
    .end local v2    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 227
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardInterpreter;

    .line 228
    .restart local v2    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v2}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_2

    .line 230
    .end local v2    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 980
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    .line 981
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 983
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 1
    .param p1, "interpreter"    # Lcom/android/vcard/VCardInterpreter;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 1083
    monitor-enter p0

    :try_start_0
    const-string v0, "vCard"

    const-string v1, "ParserImpl received cancel operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    monitor-exit p0

    return-void

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;
    .locals 13
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3b

    const/16 v11, 0x3a

    const/16 v10, 0x22

    .line 364
    new-instance v5, Lcom/android/vcard/VCardProperty;

    invoke-direct {v5}, Lcom/android/vcard/VCardProperty;-><init>()V

    .line 366
    .local v5, "propertyData":Lcom/android/vcard/VCardProperty;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 367
    .local v3, "length":I
    if-lez v3, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_0

    .line 368
    new-instance v8, Lcom/android/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v8}, Lcom/android/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v8

    .line 371
    :cond_0
    const/4 v7, 0x0

    .line 372
    .local v7, "state":I
    const/4 v4, 0x0

    .line 376
    .local v4, "nameIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_b

    .line 377
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 378
    .local v0, "ch":C
    packed-switch v7, :pswitch_data_0

    .line 376
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :pswitch_0
    if-ne v0, v11, :cond_3

    .line 381
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_2

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v8}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 415
    .end local v6    # "propertyName":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 383
    .restart local v6    # "propertyName":Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_2

    .line 385
    .end local v6    # "propertyName":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_5

    .line 386
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "groupName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 388
    const-string v8, "vCard"

    const-string v9, "Empty group found. Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_4
    add-int/lit8 v4, v2, 0x1

    .line 393
    goto :goto_1

    .line 390
    :cond_4
    invoke-virtual {v5, v1}, Lcom/android/vcard/VCardProperty;->addGroup(Ljava/lang/String;)V

    goto :goto_4

    .line 393
    .end local v1    # "groupName":Ljava/lang/String;
    :cond_5
    if-ne v0, v12, :cond_1

    .line 394
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 395
    .restart local v6    # "propertyName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v4, v2, 0x1

    .line 397
    const/4 v7, 0x1

    .line 398
    goto :goto_1

    .line 403
    .end local v6    # "propertyName":Ljava/lang/String;
    :pswitch_1
    if-ne v0, v10, :cond_7

    .line 404
    const-string v8, "2.1"

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 405
    const-string v8, "vCard"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_6
    const/4 v7, 0x2

    goto :goto_1

    .line 409
    :cond_7
    if-ne v0, v12, :cond_8

    .line 410
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 411
    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    .line 412
    :cond_8
    if-ne v0, v11, :cond_1

    .line 413
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 414
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_9

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v5, v8}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v8, ""

    goto :goto_5

    .line 420
    :pswitch_2
    if-ne v0, v10, :cond_1

    .line 421
    const-string v8, "2.1"

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 422
    const-string v8, "vCard"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 432
    .end local v0    # "ch":C
    :cond_b
    new-instance v8, Lcom/android/vcard/exception/VCardInvalidLineException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 876
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "File ended during parsing BASE64 binary"

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 886
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 888
    const-string v3, "vCard"

    const-string v4, "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v3, "vCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problematic line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 896
    :cond_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 898
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 199
    new-instance v1, Lcom/android/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 201
    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Lcom/android/vcard/VCardProperty;)V
    .locals 4
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BEGIN:VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 950
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 951
    .local v1, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_0

    .line 955
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_0
    new-instance v2, Lcom/android/vcard/exception/VCardAgentNotSupportedException;

    const-string v3, "AGENT Property is not supported now."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-virtual {p1, p2, p3}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method protected handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "charsetval"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 526
    const-string v0, "CHARSET"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method protected handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "pencodingval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    const-string v0, "ENCODING"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 515
    return-void

    .line 513
    :cond_1
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 7
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "langval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 534
    const-string v4, "-"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "strArray":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 536
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 539
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 540
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 541
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 542
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_2
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 546
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 547
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 548
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 549
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_4
    const-string v4, "LANGUAGE"

    invoke-virtual {p1, v4, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method protected handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method protected handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 6
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 444
    const-string v3, "="

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "strArray":[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 446
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "paramName":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "paramValue":Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 466
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 450
    .restart local v0    # "paramName":Ljava/lang/String;
    .restart local v1    # "paramValue":Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 459
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_5
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 464
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, p1, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 24
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    .line 573
    .local v17, "propertyNameUpper":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, "propertyRawValue":Ljava/lang/String;
    const-string v20, "ISO-8859-1"

    .line 575
    .local v20, "sourceCharset":Ljava/lang/String;
    const-string v2, "CHARSET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v10

    .line 577
    .local v10, "charsetCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    .line 580
    .local v6, "targetCharset":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 581
    .local v7, "isCharsetMissing":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    const-string v6, "UTF-8"

    .line 583
    const/4 v7, 0x1

    .line 588
    :cond_0
    const-string v2, "ADR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ORG"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GEO"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "N"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 596
    :cond_1
    const-string v5, "ISO-8859-1"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/vcard/VCardParserImpl_V21;->handleAdrOrgN(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 719
    :cond_2
    return-void

    .line 577
    .end local v6    # "targetCharset":Ljava/lang/String;
    .end local v7    # "isCharsetMissing":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 601
    .restart local v6    # "targetCharset":Ljava/lang/String;
    .restart local v7    # "isCharsetMissing":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "FN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ENCODING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 609
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 612
    .local v19, "quotedPrintablePart":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 613
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/vcard/VCardUtilsExt;->getMissingCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 617
    :cond_6
    const/4 v2, 0x0

    const-string v3, "ISO-8859-1"

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3, v6}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 620
    .local v16, "propertyEncodedValue":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 621
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/vcard/VCardProperty;->setValues([Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/vcard/VCardInterpreter;

    .line 623
    .local v14, "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_1

    .line 625
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    .end local v16    # "propertyEncodedValue":Ljava/lang/String;
    .end local v19    # "quotedPrintablePart":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 630
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 632
    .local v8, "base64Property":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v8, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/vcard/VCardProperty;->setByteValue([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/vcard/VCardInterpreter;

    .line 637
    .restart local v14    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 639
    .end local v8    # "base64Property":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :catch_0
    move-exception v12

    .line 640
    .local v12, "error":Ljava/lang/OutOfMemoryError;
    const-string v2, "vCard"

    const-string v3, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/vcard/VCardInterpreter;

    .line 642
    .restart local v14    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_3

    .line 633
    .end local v12    # "error":Ljava/lang/OutOfMemoryError;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    .restart local v8    # "base64Property":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 634
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decode error on base64 photo: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    .line 646
    .end local v8    # "base64Property":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v3, "7BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v3, "8BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 648
    const-string v2, "vCard"

    const-string v3, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v5, v22

    const/16 v22, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v2

    if-nez v2, :cond_d

    .line 676
    const/4 v9, 0x0

    .line 678
    .local v9, "builder":Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v15

    .line 685
    .local v15, "nextLine":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_c

    const-string v2, "END:VCARD"

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 690
    if-nez v9, :cond_b

    .line 691
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .restart local v9    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_b
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 699
    :cond_c
    if-eqz v9, :cond_d

    .line 700
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 705
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .end local v15    # "nextLine":Ljava/lang/String;
    :cond_d
    if-eqz v7, :cond_e

    .line 706
    invoke-static {v4, v6}, Lcom/android/vcard/VCardUtilsExt;->getMissingCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 710
    :cond_e
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v18, "propertyValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-static {v2, v3, v6}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 713
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/vcard/VCardInterpreter;

    .line 716
    .restart local v14    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_5
.end method

.method protected handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "ptypeval"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    const-string v0, "vCard"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    const-string v0, "TYPE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method protected handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "pvalueval"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v0, "vCard"

    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    const-string v0, "VALUE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v0, "vCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 963
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1034
    if-nez p1, :cond_0

    .line 1035
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "InputStream must not be null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1038
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1039
    .local v4, "tmpReader":Ljava/io/InputStreamReader;
    new-instance v5, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v5, v4}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1042
    .local v2, "start":J
    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 1043
    .local v1, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    .line 1048
    .end local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_1
    monitor-enter p0

    .line 1049
    :try_start_0
    iget-boolean v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v5, :cond_2

    .line 1050
    const-string v5, "vCard"

    const-string v6, "Cancel request has come. exitting parse operation."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    :goto_1
    iget-object v5, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 1060
    .restart local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_2

    .line 1053
    .end local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 1053
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1062
    :cond_3
    return-void
.end method

.method protected parseItem()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v4, "8BIT"

    iput-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;

    move-result-object v1

    .line 309
    .local v1, "propertyData":Lcom/android/vcard/VCardProperty;
    invoke-virtual {v1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "propertyNameUpper":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "propertyRawValue":Ljava/lang/String;
    const-string v4, "BEGIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->handleNest()V

    .line 327
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 316
    :cond_0
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown BEGIN type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_1
    const-string v4, "END"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 319
    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    const/4 v4, 0x1

    goto :goto_1

    .line 322
    :cond_2
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown END type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 325
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/android/vcard/VCardParserImpl_V21;->parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parseItems()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 282
    .local v1, "ended":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    if-nez v1, :cond_0

    .line 289
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    const-string v2, "vCard"

    const-string v3, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v0    # "e":Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    :catch_1
    move-exception v0

    .line 291
    .restart local v0    # "e":Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    const-string v2, "vCard"

    const-string v3, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v0    # "e":Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    :cond_0
    return-void
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .param p1, "allowGarbage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 259
    :goto_0
    return v3

    .line 246
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 250
    const-string v5, ":"

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "strArray":[Ljava/lang/String;
    array-length v0, v2

    .line 257
    .local v0, "length":I
    if-ne v0, v7, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 259
    goto :goto_0

    .line 260
    :cond_2
    if-nez p1, :cond_3

    .line 261
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_3
    if-nez p1, :cond_0

    .line 266
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
