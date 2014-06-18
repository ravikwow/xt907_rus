.class Lcom/android/contacts/model/account/BaseAccountType$StructuredPostalKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StructuredPostalKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/model/account/BaseAccountType$1;

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$StructuredPostalKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1226
    const-string v0, "home"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    .line 1233
    :goto_0
    return-object v0

    .line 1227
    :cond_0
    const-string v0, "work"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1228
    :cond_1
    const-string v0, "other"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1229
    :cond_2
    const-string v0, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1230
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    goto :goto_0

    .line 1233
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    const-string v0, "postal"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    const-string v1, "needsStructured"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v14

    .line 1174
    .local v14, "needsStructured":Z
    const-string v1, "BaseAccountType"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    const-string v1, "BaseAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needsStructured = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_0
    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    const-string v7, "data2"

    const v8, 0x7f0b0051

    const/16 v9, 0x19

    const v10, 0x7f040092

    new-instance v11, Lcom/android/contacts/model/account/BaseAccountType$PostalActionInflater;

    invoke-direct {v11}, Lcom/android/contacts/model/account/BaseAccountType$PostalActionInflater;-><init>()V

    new-instance v12, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v12, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/android/contacts/model/account/BaseAccountType$StructuredPostalKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v13

    .line 1186
    .local v13, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    if-eqz v14, :cond_2

    .line 1188
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1190
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data10"

    const v4, 0x7f0b015d

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data9"

    const v4, 0x7f0b015c

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data8"

    const v4, 0x7f0b015b

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data7"

    const v4, 0x7f0b015a

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data4"

    const v4, 0x7f0b0157

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/model/dataitem/DataKind;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 1202
    :cond_1
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data4"

    const v4, 0x7f0b0157

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data7"

    const v4, 0x7f0b015a

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data8"

    const v4, 0x7f0b015b

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data9"

    const v4, 0x7f0b015c

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data10"

    const v4, 0x7f0b015d

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1214
    :cond_2
    const/16 v1, 0xa

    iput v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 1215
    iget-object v1, v13, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0156

    const v5, 0x22071

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
