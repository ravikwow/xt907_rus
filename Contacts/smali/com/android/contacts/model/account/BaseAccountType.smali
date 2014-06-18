.class public abstract Lcom/android/contacts/model/account/BaseAccountType;
.super Lcom/android/contacts/model/account/AccountType;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/account/BaseAccountType$1;,
        Lcom/android/contacts/model/account/BaseAccountType$RelationshipKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$EventKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$GroupMembershipKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$SipAddressKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$WebsiteKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$NoteKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$PhotoKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$OrganizationKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$ImKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$StructuredPostalKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$EmailKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$PhoneKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$NicknameKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$NameKindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;,
        Lcom/android/contacts/model/account/BaseAccountType$KindParser;,
        Lcom/android/contacts/model/account/BaseAccountType$ImActionInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$PostalActionInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$RelationActionInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$EventActionInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$CommonInflater;,
        Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Lcom/android/contacts/model/account/AccountType;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    .line 120
    const v0, 0x7f0b0115

    iput v0, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    .line 121
    const/high16 v0, 0x7f030000

    iput v0, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    .line 122
    return-void
.end method

.method static synthetic access$1400(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/util/AttributeSet;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Landroid/util/AttributeSet;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/AttributeSet;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/android/contacts/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 129
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildEventType(IZ)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I
    .param p1, "yearOptional"    # Z

    .prologue
    .line 141
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EventEditType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/account/AccountType$EventEditType;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/account/AccountType$EventEditType;->setYearOptional(Z)Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected static buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 137
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 125
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 133
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildRelationType(I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 145
    new-instance v0, Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 718
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 714
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v10, 0x7f0b0160

    const v9, 0x7f0b015f

    const v2, 0x7f0b0106

    const/16 v8, 0x2061

    const/4 v4, 0x1

    .line 179
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "#displayName"

    const/4 v3, -0x1

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v7

    .line 181
    .local v7, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 182
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 183
    iput v4, v7, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 185
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 186
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b015e

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 192
    .local v6, "displayOrderPrimary":Z
    if-nez v6, :cond_0

    .line 193
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0161

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0b0162

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b0163

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_0
    return-object v7

    .line 204
    :cond_0
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0161

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data2"

    invoke-direct {v1, v2, v9, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0b0162

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data3"

    invoke-direct {v1, v2, v10, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, v7, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b0163

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b004f

    const/4 v4, 0x1

    .line 295
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/16 v3, 0xf

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 297
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 298
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 299
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 301
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 309
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-object v6
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 436
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/group_membership"

    const v2, 0x7f0b010c

    const/16 v3, 0x3e7

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 439
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 440
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 441
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    const/16 v0, 0xa

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 445
    return-object v6
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0050

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 338
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/im"

    const/16 v3, 0x14

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 340
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 341
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 346
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 347
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string v0, "data5"

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 350
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 351
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    const-string v3, "data6"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 363
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-object v6
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0107

    const/4 v4, 0x1

    .line 240
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/nickname"

    const/16 v3, 0x73

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 242
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 243
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 244
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 245
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 246
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 249
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-object v6
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0b0046

    .line 394
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/note"

    const/16 v3, 0x6e

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 396
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 397
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 398
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 399
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 400
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x24001

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    const/16 v0, 0x64

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 404
    return-object v6
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2001

    const/4 v4, 0x1

    .line 369
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/organization"

    const v2, 0x7f0b0108

    const/4 v3, 0x5

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 372
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 373
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 374
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 376
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 377
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b0048

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0049

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b004e

    const/16 v3, 0xa

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 256
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 258
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    const v0, 0x7f02006b

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    .line 259
    const v0, 0x7f0b0140

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    .line 260
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 261
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 262
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 263
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 265
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    const-string v5, "data3"

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 289
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v6
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0167

    const/16 v7, 0xc1

    const/4 v4, 0x1

    .line 220
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "#phoneticName"

    const/4 v3, -0x1

    const v5, 0x7f040077

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 222
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v1, 0x7f0b0106

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 223
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 224
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 226
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 227
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "#phoneticName"

    invoke-direct {v1, v3, v2, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0b0166

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0b0165

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0b0164

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v6
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 386
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/photo"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 387
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 388
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 389
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v1, v3, v2, v2}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-object v6
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0b0047

    .line 422
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/sip_address"

    const/16 v3, 0x82

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 425
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 426
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 427
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 428
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 429
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    return-object v6
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0106

    const/16 v8, 0xc1

    const/16 v7, 0x2061

    const/4 v4, 0x1

    .line 149
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    const/4 v3, -0x1

    const v5, 0x7f040091

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 151
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 152
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 153
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 155
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 156
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b015e

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0161

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data3"

    const v3, 0x7f0b0160

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data5"

    const v3, 0x7f0b0162

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data2"

    const v3, 0x7f0b015f

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data6"

    const v3, 0x7f0b0163

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data9"

    const v3, 0x7f0b0166

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data8"

    const v3, 0x7f0b0165

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data7"

    const v3, 0x7f0b0164

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v6
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 315
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0b0051

    const/16 v3, 0x19

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 317
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/account/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 318
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 319
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 320
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 321
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/contacts/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 328
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b0156

    const v4, 0x22071

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    const/16 v0, 0xa

    iput v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 334
    return-object v6
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0b0109

    .line 408
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/website"

    const/16 v3, 0x78

    const/4 v4, 0x1

    const v5, 0x7f040092

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 410
    .local v6, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 411
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 412
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 413
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 416
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x11

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    return-object v6
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method protected final parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 694
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 695
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 696
    .local v0, "depth":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    add-int/lit8 v6, v3, 0x1

    if-ne v0, v6, :cond_0

    .line 700
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, "tag":Ljava/lang/String;
    const-string v6, "DataKind"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 703
    sget-object v6, Lcom/android/contacts/model/account/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/model/account/BaseAccountType$KindParser;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/contacts/model/account/BaseAccountType$KindParser;->parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/DataKind;

    .line 704
    .local v2, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/account/BaseAccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    goto :goto_1

    .line 707
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    :cond_2
    const-string v6, "BaseAccountType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    .end local v0    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method
