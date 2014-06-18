.class Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/model/account/BaseAccountType$1;

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;-><init>()V

    return-void
.end method

.method private static checkAttributeTrue(ZLjava/lang/String;)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 907
    if-nez p0, :cond_0

    .line 908
    new-instance v0, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_0
    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    const-string v0, "name"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 26
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
    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 925
    .local v14, "displayOrderPrimary":Z
    const-string v2, "supportsDisplayName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v19

    .line 926
    .local v19, "supportsDisplayName":Z
    const-string v2, "supportsPrefix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v24

    .line 927
    .local v24, "supportsPrefix":Z
    const-string v2, "supportsMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v20

    .line 928
    .local v20, "supportsMiddleName":Z
    const-string v2, "supportsSuffix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v25

    .line 929
    .local v25, "supportsSuffix":Z
    const-string v2, "supportsPhoneticFamilyName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v21

    .line 931
    .local v21, "supportsPhoneticFamilyName":Z
    const-string v2, "supportsPhoneticMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v23

    .line 933
    .local v23, "supportsPhoneticMiddleName":Z
    const-string v2, "supportsPhoneticGivenName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/contacts/model/account/BaseAccountType;->access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v22

    .line 937
    .local v22, "supportsPhoneticGivenName":Z
    const-string v2, "supportsDisplayName"

    move/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 938
    const-string v2, "supportsPrefix"

    move/from16 v0, v24

    invoke-static {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 939
    const-string v2, "supportsMiddleName"

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 940
    const-string v2, "supportsSuffix"

    move/from16 v0, v25

    invoke-static {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 941
    const-string v2, "supportsPhoneticFamilyName"

    move/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 942
    const-string v2, "supportsPhoneticMiddleName"

    move/from16 v0, v23

    invoke-static {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 943
    const-string v2, "supportsPhoneticGivenName"

    move/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 948
    .local v16, "kinds":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/dataitem/DataKind;>;"
    const/4 v6, 0x0

    const-string v7, "vnd.android.cursor.item/name"

    const/4 v8, 0x0

    const v9, 0x7f0b0106

    const/4 v10, -0x1

    const v11, 0x7f040091

    new-instance v12, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f0b0106

    invoke-direct {v12, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v13, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v13, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v18

    .line 954
    .local v18, "ks":Lcom/android/contacts/model/dataitem/DataKind;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->throwIfList(Lcom/android/contacts/model/dataitem/DataKind;)V

    .line 955
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f0b015e

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f0b0161

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f0b0160

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f0b0162

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f0b015f

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f0b0163

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b0166

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0b0165

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f0b0164

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    const/4 v6, 0x1

    const-string v7, "#displayName"

    const/4 v8, 0x0

    const v9, 0x7f0b0106

    const/4 v10, -0x1

    const v11, 0x7f040092

    new-instance v12, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f0b0106

    invoke-direct {v12, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v13, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v13, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v15

    .line 987
    .local v15, "kd":Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v2, 0x1

    iput v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 988
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data1"

    const v5, 0x7f0b015e

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    if-nez v14, :cond_0

    .line 994
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f0b0161

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f0b0160

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f0b0162

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f0b015f

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f0b0163

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    :goto_0
    const/4 v6, 0x1

    const-string v7, "#phoneticName"

    const/4 v8, 0x0

    const v9, 0x7f0b0167

    const/4 v10, -0x1

    const v11, 0x7f040077

    new-instance v12, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f0b0106

    invoke-direct {v12, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v13, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v2, "data1"

    invoke-direct {v13, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v13}, Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v17

    .line 1023
    .local v17, "kp":Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 1024
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "#phoneticName"

    const v5, 0x7f0b0167

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b0166

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0b0165

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f0b0164

    const/16 v6, 0xc1

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    return-object v16

    .line 1005
    .end local v17    # "kp":Lcom/android/contacts/model/dataitem/DataKind;
    :cond_0
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data4"

    const v5, 0x7f0b0161

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data2"

    const v5, 0x7f0b015f

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data5"

    const v5, 0x7f0b0162

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data3"

    const v5, 0x7f0b0160

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object v2, v15, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data6"

    const v5, 0x7f0b0163

    const/16 v6, 0x2061

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
