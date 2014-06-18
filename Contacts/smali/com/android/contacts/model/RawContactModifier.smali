.class public Lcom/android/contacts/model/RawContactModifier;
.super Ljava/lang/Object;
.source "RawContactModifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
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
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    const-class v0, Lcom/android/contacts/model/RawContactModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    .line 929
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    const-string v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "vnd.android.cursor.item/relation"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "vnd.android.cursor.item/sip_address"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 937
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 8
    .param p0, "entry"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p2, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 787
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 809
    :goto_0
    return v5

    .line 791
    :cond_1
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 792
    .local v4, "typeInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 794
    .local v3, "type":I
    :goto_1
    invoke-static {v3, p1, p2}, Lcom/android/contacts/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 795
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 796
    goto :goto_0

    .line 792
    .end local v3    # "type":I
    :cond_2
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/account/AccountType$EditType;

    iget v3, v5, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    goto :goto_1

    .line 800
    .restart local v3    # "type":I
    :cond_3
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 801
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 802
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 803
    .local v0, "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v5, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 804
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v7, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 805
    goto :goto_0

    .line 801
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_5
    move v5, v7

    .line 809
    goto :goto_0
.end method

.method protected static areEqual(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 6
    .param p0, "values1"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p1, "values2"    # Landroid/content/ContentValues;
    .param p2, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    const/4 v4, 0x0

    .line 509
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 519
    :goto_0
    return v4

    .line 511
    :cond_0
    iget-object v5, p2, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 512
    .local v0, "field":Lcom/android/contacts/model/account/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "value1":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "value2":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 519
    .end local v0    # "field":Lcom/android/contacts/model/account/AccountType$EditField;
    .end local v2    # "value1":Ljava/lang/String;
    .end local v3    # "value2":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 92
    .local v2, "visibleCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->hasValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v1

    .line 93
    .local v1, "validTypes":Z
    iget v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v2, v5, :cond_1

    :cond_0
    move v0, v3

    .line 95
    .local v0, "validOverall":Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    .end local v0    # "validOverall":Z
    :cond_1
    move v0, v4

    .line 93
    goto :goto_0

    .restart local v0    # "validOverall":Z
    :cond_2
    move v3, v4

    .line 95
    goto :goto_1
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-nez p2, :cond_0

    .line 1011
    const/4 v3, 0x0

    .line 1022
    :goto_0
    return-object v3

    .line 1014
    :cond_0
    iget v2, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 1015
    .local v2, "typeOverallMax":I
    if-ltz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 1016
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1017
    .local v1, "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1018
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1020
    :cond_1
    move-object p2, v1

    .end local v0    # "i":I
    .end local v1    # "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    :cond_2
    move-object v3, p2

    .line 1022
    goto :goto_0
.end method

.method public static ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 6
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    .line 115
    .local v2, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    invoke-virtual {p0, p2, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 117
    .local v1, "hasChild":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 118
    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 130
    :goto_1
    return-object v3

    .end local v1    # "hasChild":Z
    :cond_0
    move v1, v4

    .line 115
    goto :goto_0

    .line 123
    .restart local v1    # "hasChild":Z
    :cond_1
    invoke-static {p0, v2}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    .line 124
    .local v0, "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    iget-object v4, v2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setFromTemplate(Z)V

    :cond_2
    move-object v3, v0

    .line 127
    goto :goto_1

    .line 130
    .end local v0    # "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 867
    const-string v2, "im_protocol"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "encodedString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 871
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 873
    .local v1, "protocol":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 874
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "protocol":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 878
    :catch_0
    move-exception v2

    goto :goto_0

    .line 876
    .restart local v1    # "protocol":Ljava/lang/Object;
    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    .end local v1    # "protocol":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "includeSecondary"    # Z
    .param p3, "exactValue"    # I

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v6, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object v3

    .line 310
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 311
    .local v4, "typeCount":Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v3, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 313
    .local v5, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 319
    .local v2, "lastType":Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 321
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 322
    .local v3, "type":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v6, v3, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 324
    .local v0, "count":I
    iget v6, v3, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-eq p3, v6, :cond_0

    .line 329
    if-lez v0, :cond_2

    .line 331
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 336
    .end local v0    # "count":I
    .end local v3    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 337
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditType;

    move-object v3, v6

    goto :goto_0

    :cond_4
    move-object v3, v2

    .line 339
    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .param p0, "entry"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 245
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 246
    .local v0, "rawValue":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 247
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/model/RawContactModifier;->getType(Lcom/android/contacts/model/dataitem/DataKind;I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .param p1, "typeColumn"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .line 850
    .local v0, "count":I
    if-eqz p0, :cond_1

    .line 851
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 852
    .local v1, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v1, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 853
    .local v3, "typeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "typeInteger":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/model/dataitem/DataKind;I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 278
    .local v1, "type":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 282
    .end local v1    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 209
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 212
    .local v6, "typeCount":Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 213
    .local v3, "mimeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    .line 228
    :goto_0
    return-object v6

    .line 215
    :cond_0
    const/4 v4, 0x0

    .line 216
    .local v4, "totalCount":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 218
    .local v1, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 221
    invoke-static {v1, p1}, Lcom/android/contacts/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    .line 222
    .local v5, "type":Lcom/android/contacts/model/account/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 223
    iget v7, v5, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 224
    .local v0, "count":I
    iget v7, v5, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 227
    .end local v0    # "count":I
    .end local v1    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v5    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/model/account/AccountType$EditType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/model/account/AccountType$EditType;
    .param p3, "includeSecondary"    # Z
    .param p4, "typeCount"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v7, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 197
    :cond_0
    return-object v7

    .line 177
    :cond_1
    if-nez p4, :cond_2

    .line 179
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 183
    :cond_2
    const/high16 v8, -0x80000000

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 184
    .local v2, "overallCount":I
    iget-object v8, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 185
    .local v3, "type":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v8, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    const/4 v4, 0x1

    .line 187
    .local v4, "validOverall":Z
    :goto_1
    iget v8, v3, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    const/4 v6, 0x1

    .line 189
    .local v6, "validSpecific":Z
    :goto_2
    if-eqz p3, :cond_9

    const/4 v5, 0x1

    .line 190
    .local v5, "validSecondary":Z
    :goto_3
    invoke-virtual {v3, p2}, Lcom/android/contacts/model/account/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    .local v0, "forcedInclude":Z
    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 193
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0    # "forcedInclude":Z
    .end local v4    # "validOverall":Z
    .end local v5    # "validSecondary":Z
    .end local v6    # "validSpecific":Z
    :cond_5
    iget v8, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v2, v8, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 187
    .restart local v4    # "validOverall":Z
    :cond_7
    iget v8, v3, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iget v9, v3, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    if-ge v8, v9, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 189
    .restart local v6    # "validSpecific":Z
    :cond_9
    iget-boolean v8, v3, Lcom/android/contacts/model/account/AccountType$EditType;->secondary:Z

    if-nez v8, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private static hasChanges(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)Z
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/account/AccountType;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 464
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/dataitem/DataKind;

    .line 465
    .local v5, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iget-object v6, v5, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 466
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 467
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 472
    .local v1, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v5}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v7

    .line 473
    .local v4, "isRealInsert":Z
    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isUpdate()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isDelete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 478
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isRealInsert":Z
    .end local v5    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    return v7

    .restart local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .restart local v1    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    move v4, v8

    .line 472
    goto :goto_0

    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 478
    goto :goto_1
.end method

.method public static hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z
    .locals 8
    .param p0, "set"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    const/4 v6, 0x1

    .line 402
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->isMarkedForSplitting()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->isMarkedForJoining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v6

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 407
    .local v3, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    .line 408
    .local v5, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "accountType":Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    .line 411
    .local v4, "type":Lcom/android/contacts/model/account/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 415
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasEditTypes(Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 1
    .param p0, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 3
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    const/high16 v2, -0x80000000

    .line 350
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    .line 351
    .local v0, "bestType":Lcom/android/contacts/model/account/AccountType$EditType;
    if-nez v0, :cond_0

    .line 353
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    .line 355
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 4
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "type"    # Lcom/android/contacts/model/account/AccountType$EditType;

    .prologue
    .line 364
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 382
    :goto_0
    return-object v1

    .line 365
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v0, "after":Landroid/content/ContentValues;
    const-string v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v2, p1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 372
    iget-object v2, p1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 375
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 377
    iget-object v2, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v1

    .line 381
    .local v1, "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto :goto_0
.end method

.method public static isEmpty(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "values"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 486
    const-string v5, "vnd.android.cursor.item/photo"

    iget-object v6, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "data15"

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 487
    goto :goto_0

    .line 491
    :cond_2
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 493
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 495
    .local v0, "field":Lcom/android/contacts/model/account/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 497
    goto :goto_0
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "type"    # I
    .param p2, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContactDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 818
    const/4 v2, 0x0

    .line 819
    .local v2, "max":I
    iget-object v6, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 820
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 821
    iget-object v6, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 822
    .local v0, "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v6, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_2

    .line 823
    iget v2, v0, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    .line 828
    .end local v0    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_3

    move v4, v5

    .line 838
    :cond_1
    :goto_1
    return v4

    .line 820
    .restart local v0    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v0    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_3
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 838
    iget-object v6, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/contacts/model/RawContactModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-lt v6, v2, :cond_1

    move v4, v5

    goto :goto_1
.end method

.method public static migrateEvent(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/lang/Integer;)V
    .locals 21
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p3, "defaultYear"    # Ljava/lang/Integer;

    .prologue
    .line 1243
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1245
    .local v15, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1294
    :cond_0
    return-void

    .line 1249
    :cond_1
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1250
    .local v9, "allowedTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/contacts/model/account/AccountType$EventEditType;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 1251
    .local v12, "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v3, v12, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    check-cast v12, Lcom/android/contacts/model/account/AccountType$EventEditType;

    .end local v12    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-virtual {v9, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 1254
    .local v13, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v13}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v19

    .line 1255
    .local v19, "values":Landroid/content/ContentValues;
    if-eqz v19, :cond_3

    .line 1258
    const-string v3, "data1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1259
    .local v11, "dateString":Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1260
    .local v18, "type":Ljava/lang/Integer;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1262
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/model/account/AccountType$EventEditType;

    .line 1264
    .local v17, "suitableType":Lcom/android/contacts/model/account/AccountType$EventEditType;
    new-instance v16, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1265
    .local v16, "position":Ljava/text/ParsePosition;
    const/16 v20, 0x0

    .line 1266
    .local v20, "yearOptional":Z
    sget-object v3, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1267
    .local v10, "date":Ljava/util/Date;
    if-nez v10, :cond_4

    .line 1268
    const/16 v20, 0x1

    .line 1269
    sget-object v3, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1271
    :cond_4
    if-eqz v10, :cond_6

    .line 1272
    if-eqz v20, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1274
    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1276
    .local v2, "calendar":Ljava/util/Calendar;
    if-nez p3, :cond_5

    .line 1277
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1279
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1280
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1281
    .local v4, "month":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1283
    .local v5, "day":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/android/contacts/editor/EventFieldEditorView;->getDefaultHourForBirthday()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1285
    const-string v3, "data1"

    sget-object v6, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "day":I
    :cond_6
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto/16 :goto_1
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 20
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 1316
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1317
    .local v9, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1415
    :cond_0
    return-void

    .line 1339
    :cond_1
    const/4 v5, 0x0

    .line 1340
    .local v5, "defaultType":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1341
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "data2"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1343
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1345
    .local v2, "allowedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    .line 1346
    .local v15, "typeSpecificMaxMap":Landroid/util/SparseIntArray;
    if-eqz v5, :cond_3

    .line 1347
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1348
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    :cond_3
    const-string v17, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1356
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 1357
    .local v6, "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v0, v6, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1358
    iget v0, v6, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    iget v0, v6, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1360
    .end local v6    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_4
    if-nez v5, :cond_5

    .line 1361
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/model/account/AccountType$EditType;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1365
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    if-nez v5, :cond_6

    .line 1366
    sget-object v17, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Default type isn\'t available for mimetype "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_6
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 1372
    .local v14, "typeOverallMax":I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 1373
    .local v4, "currentEntryCount":Landroid/util/SparseIntArray;
    const/4 v12, 0x0

    .line 1375
    .local v12, "totalCount":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 1376
    .local v7, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_8

    if-ge v12, v14, :cond_0

    .line 1380
    :cond_8
    invoke-virtual {v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v16

    .line 1381
    .local v16, "values":Landroid/content/ContentValues;
    if-eqz v16, :cond_7

    .line 1385
    const-string v17, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1387
    .local v10, "oldType":Ljava/lang/Integer;
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1389
    if-eqz v5, :cond_b

    .line 1390
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1391
    .local v13, "typeForNewAccount":Ljava/lang/Integer;
    const-string v17, "data2"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-nez v17, :cond_9

    .line 1393
    const-string v17, "data3"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1402
    :cond_9
    :goto_2
    if-eqz v13, :cond_a

    .line 1403
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 1404
    .local v11, "specificMax":I
    if-ltz v11, :cond_a

    .line 1405
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1406
    .local v3, "currentCount":I
    if-ge v3, v11, :cond_7

    .line 1409
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    .end local v3    # "currentCount":I
    .end local v11    # "specificMax":I
    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 1413
    add-int/lit8 v12, v12, 0x1

    .line 1414
    goto/16 :goto_1

    .line 1396
    .end local v13    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_b
    const/4 v13, 0x0

    .line 1397
    .restart local v13    # "typeForNewAccount":Ljava/lang/Integer;
    const-string v17, "data2"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 1400
    .end local v13    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_c
    move-object v13, v10

    .restart local v13    # "typeForNewAccount":Ljava/lang/Integer;
    goto :goto_2
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 5
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 1299
    iget-object v4, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1301
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1311
    :cond_0
    return-void

    .line 1305
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 1306
    .local v0, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    .line 1307
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 1308
    invoke-static {v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto :goto_0
.end method

.method public static migratePostal(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 25
    .param p0, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 1132
    const-string v23, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1134
    .local v15, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1238
    :cond_0
    return-void

    .line 1138
    :cond_1
    const/16 v18, 0x0

    .line 1139
    .local v18, "supportFormattedAddress":Z
    const/16 v19, 0x0

    .line 1140
    .local v19, "supportStreet":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/account/AccountType$EditField;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 1141
    .local v10, "firstColumn":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 1142
    .local v6, "editField":Lcom/android/contacts/model/account/AccountType$EditField;
    const-string v23, "data1"

    iget-object v0, v6, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1143
    const/16 v18, 0x1

    .line 1145
    :cond_3
    const-string v23, "data4"

    iget-object v0, v6, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1146
    const/16 v19, 0x1

    goto :goto_0

    .line 1150
    .end local v6    # "editField":Lcom/android/contacts/model/account/AccountType$EditField;
    :cond_4
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 1151
    .local v20, "supportedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    .line 1152
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 1153
    .local v7, "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1157
    .end local v7    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 1158
    .local v9, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v9}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v22

    .line 1159
    .local v22, "values":Landroid/content/ContentValues;
    if-eqz v22, :cond_6

    .line 1162
    const-string v23, "data2"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1163
    .local v16, "oldType":Ljava/lang/Integer;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 1165
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 1166
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    const-string v24, "data2"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1170
    .local v5, "defaultType":I
    :goto_3
    const-string v23, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1171
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v23

    if-nez v23, :cond_7

    .line 1172
    const-string v23, "data3"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1176
    .end local v5    # "defaultType":I
    :cond_7
    const-string v23, "data1"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1177
    .local v11, "formattedAddress":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 1178
    if-nez v18, :cond_8

    .line 1180
    const-string v23, "data1"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1185
    if-eqz v19, :cond_a

    .line 1186
    const-string v23, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_8
    :goto_4
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto :goto_2

    .line 1168
    .end local v11    # "formattedAddress":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/account/AccountType$EditType;

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    .restart local v5    # "defaultType":I
    goto :goto_3

    .line 1188
    .end local v5    # "defaultType":I
    .restart local v11    # "formattedAddress":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1192
    :cond_b
    if-eqz v18, :cond_8

    .line 1197
    sget-object v23, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 1199
    .local v21, "useJapaneseOrder":Z
    if-eqz v21, :cond_d

    .line 1200
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "data10"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x1

    const-string v24, "data9"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x2

    const-string v24, "data8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    const-string v24, "data7"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const-string v24, "data6"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x5

    const-string v24, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x6

    const-string v24, "data5"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    .line 1218
    .local v17, "structuredData":[Ljava/lang/String;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v14, :cond_e

    aget-object v8, v3, v13

    .line 1220
    .local v8, "elem":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 1221
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1209
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "elem":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "structuredData":[Ljava/lang/String;
    :cond_d
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "data5"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x1

    const-string v24, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x2

    const-string v24, "data6"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    const-string v24, "data7"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const-string v24, "data8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x5

    const-string v24, "data9"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x6

    const-string v24, "data10"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    .restart local v17    # "structuredData":[Ljava/lang/String;
    goto/16 :goto_5

    .line 1224
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    :cond_e
    const-string v23, "data1"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v23, "data5"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1227
    const-string v23, "data4"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1228
    const-string v23, "data6"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1229
    const-string v23, "data7"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1230
    const-string v23, "data8"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1231
    const-string v23, "data9"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1232
    const-string v23, "data10"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/account/AccountType;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "oldAccountType"    # Lcom/android/contacts/model/account/AccountType;
    .param p4, "newAccountType"    # Lcom/android/contacts/model/account/AccountType;

    .prologue
    .line 957
    if-ne p4, p3, :cond_3

    .line 960
    invoke-virtual {p4}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/dataitem/DataKind;

    .line 961
    .local v4, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iget-object v5, v4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 963
    .local v5, "mimeType":Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 964
    invoke-static {p0, p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_0

    .line 966
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 967
    .local v1, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 968
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 969
    .local v0, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v6

    .line 970
    .local v6, "values":Landroid/content/ContentValues;
    if-eqz v6, :cond_2

    .line 971
    invoke-static {v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto :goto_1

    .line 980
    .end local v0    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v1    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p4}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/dataitem/DataKind;

    .line 981
    .restart local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iget-boolean v7, v4, Lcom/android/contacts/model/dataitem/DataKind;->editable:Z

    if-eqz v7, :cond_4

    .line 982
    iget-object v5, v4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 983
    .restart local v5    # "mimeType":Ljava/lang/String;
    const-string v7, "#displayName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "#phoneticName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 987
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 988
    invoke-static {p0, p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    .line 989
    :cond_5
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 990
    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migratePostal(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    .line 991
    :cond_6
    const-string v7, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 992
    const/4 v7, 0x0

    invoke-static {p1, p2, v4, v7}, Lcom/android/contacts/model/RawContactModifier;->migrateEvent(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/lang/Integer;)V

    goto :goto_2

    .line 993
    :cond_7
    sget-object v7, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 994
    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    .line 995
    :cond_8
    sget-object v7, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 996
    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/RawContactModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    .line 998
    :cond_9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected editable mime-type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1002
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "newDataKind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 1029
    const-string v15, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v14

    .line 1031
    .local v14, "values":Landroid/content/ContentValues;
    if-nez v14, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1035
    :cond_0
    const/4 v8, 0x0

    .line 1036
    .local v8, "supportDisplayName":Z
    const/4 v10, 0x0

    .line 1037
    .local v10, "supportPhoneticFullName":Z
    const/4 v9, 0x0

    .line 1038
    .local v9, "supportPhoneticFamilyName":Z
    const/4 v12, 0x0

    .line 1039
    .local v12, "supportPhoneticMiddleName":Z
    const/4 v11, 0x0

    .line 1040
    .local v11, "supportPhoneticGivenName":Z
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 1041
    .local v3, "editField":Lcom/android/contacts/model/account/AccountType$EditField;
    const-string v15, "data1"

    iget-object v0, v3, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1042
    const/4 v8, 0x1

    .line 1044
    :cond_2
    const-string v15, "#phoneticName"

    iget-object v0, v3, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1045
    const/4 v10, 0x1

    .line 1047
    :cond_3
    const-string v15, "data9"

    iget-object v0, v3, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1048
    const/4 v9, 0x1

    .line 1050
    :cond_4
    const-string v15, "data8"

    iget-object v0, v3, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1051
    const/4 v12, 0x1

    .line 1053
    :cond_5
    const-string v15, "data7"

    iget-object v0, v3, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1054
    const/4 v11, 0x1

    goto :goto_1

    .line 1059
    .end local v3    # "editField":Lcom/android/contacts/model/account/AccountType$EditField;
    :cond_6
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 1061
    if-nez v8, :cond_7

    .line 1063
    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1066
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1080
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1081
    .local v7, "phoneticFullName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 1082
    if-nez v10, :cond_8

    .line 1084
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lcom/android/contacts/editor/PhoneticNameEditorView;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    move-result-object v13

    .line 1086
    .local v13, "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1087
    if-eqz v9, :cond_a

    .line 1088
    const-string v15, "data9"

    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :goto_2
    if-eqz v12, :cond_b

    .line 1094
    const-string v15, "data8"

    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :goto_3
    if-eqz v11, :cond_c

    .line 1100
    const-string v15, "data7"

    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    .end local v13    # "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    :cond_8
    :goto_4
    invoke-static {v14}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto/16 :goto_0

    .line 1069
    .end local v7    # "phoneticFullName":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_9
    if-eqz v8, :cond_7

    .line 1071
    const-string v15, "data1"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    sget-object v1, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_7

    aget-object v4, v1, v5

    .line 1074
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1073
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1091
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local v7    # "phoneticFullName":Ljava/lang/String;
    .restart local v13    # "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    :cond_a
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 1097
    :cond_b
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1103
    :cond_c
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 1107
    .end local v13    # "tmpItem":Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    :cond_d
    if-eqz v10, :cond_e

    .line 1109
    const-string v15, "#phoneticName"

    const-string v16, "data9"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/android/contacts/editor/PhoneticNameEditorView;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :cond_e
    if-nez v9, :cond_f

    .line 1116
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1118
    :cond_f
    if-nez v12, :cond_10

    .line 1119
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1121
    :cond_10
    if-nez v11, :cond_8

    .line 1122
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "typeExtra"    # Ljava/lang/String;
    .param p4, "valueExtra"    # Ljava/lang/String;
    .param p5, "valueColumn"    # Ljava/lang/String;

    .prologue
    .line 895
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 898
    .local v7, "value":Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 921
    :cond_0
    :goto_0
    return-object v1

    .line 901
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v0

    .line 902
    .local v0, "canInsert":Z
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .line 903
    .local v6, "validValue":Z
    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 902
    .end local v6    # "validValue":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 906
    .restart local v6    # "validValue":Z
    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 907
    .local v4, "hasType":Z
    if-eqz v4, :cond_5

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 909
    .local v5, "typeValue":I
    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    .line 912
    .local v3, "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-static {p0, p1, v3}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v1

    .line 913
    .local v1, "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 917
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 918
    .local v2, "customType":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    .end local v1    # "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v2    # "customType":Ljava/lang/String;
    .end local v3    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    .end local v5    # "typeValue":I
    :cond_5
    const/high16 v8, -0x80000000

    goto :goto_2
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 528
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/android/contacts/model/RawContactModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 534
    invoke-static/range {p1 .. p3}, Lcom/android/contacts/model/RawContactModifier;->parseStructuredPostalExtra(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 538
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    .line 539
    .local v4, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    const-string v6, "phone_type"

    const-string v7, "phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 540
    const-string v6, "secondary_phone_type"

    const-string v7, "secondary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 542
    const-string v6, "tertiary_phone_type"

    const-string v7, "tertiary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 548
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    .line 549
    const-string v6, "email_type"

    const-string v7, "email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 550
    const-string v6, "secondary_email_type"

    const-string v7, "secondary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 552
    const-string v6, "tertiary_email_type"

    const-string v7, "tertiary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 558
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    .line 559
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/model/RawContactModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 560
    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 564
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const/4 v12, 0x1

    .line 566
    .local v12, "hasOrg":Z
    :goto_1
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v14

    .line 567
    .local v14, "kindOrg":Lcom/android/contacts/model/dataitem/DataKind;
    if-eqz v12, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 568
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v9

    .line 570
    .local v9, "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, "company":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    const-string v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_3
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 576
    .local v16, "title":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 577
    const-string v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .end local v9    # "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v10    # "company":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_4
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 583
    .local v11, "hasNotes":Z
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v13

    .line 584
    .local v13, "kindNotes":Lcom/android/contacts/model/dataitem/DataKind;
    if-eqz v11, :cond_5

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 585
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v9

    .line 587
    .restart local v9    # "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 588
    .local v15, "notes":Ljava/lang/String;
    invoke-static {v15}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 589
    const-string v3, "data1"

    invoke-virtual {v9, v3, v15}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .end local v9    # "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v15    # "notes":Ljava/lang/String;
    :cond_5
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 595
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_0

    .line 596
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->parseValues(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 564
    .end local v11    # "hasNotes":Z
    .end local v12    # "hasOrg":Z
    .end local v13    # "kindNotes":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v14    # "kindOrg":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v17    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 603
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 604
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v8

    .line 606
    .local v8, "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 607
    .local v13, "name":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v12

    .line 609
    .local v12, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v15, 0x0

    .line 610
    .local v15, "supportsDisplayName":Z
    iget-object v2, v12, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, v12, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 612
    .local v10, "field":Lcom/android/contacts/model/account/AccountType$EditField;
    const-string v2, "data1"

    iget-object v4, v10, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    const/4 v15, 0x1

    .line 619
    .end local v10    # "field":Lcom/android/contacts/model/account/AccountType$EditField;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v15, :cond_4

    .line 620
    const-string v2, "data1"

    invoke-virtual {v8, v2, v13}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v12    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v15    # "supportsDisplayName":Z
    :cond_2
    :goto_0
    const-string v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 650
    .local v14, "phoneticName":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    const-string v2, "data7"

    invoke-virtual {v8, v2, v14}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_3
    return-void

    .line 622
    .end local v14    # "phoneticName":Ljava/lang/String;
    .restart local v12    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .restart local v15    # "supportsDisplayName":Z
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v2, v4, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 626
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data3"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "data6"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 636
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 637
    const-string v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 11
    .param p0, "accountType"    # Lcom/android/contacts/model/account/AccountType;
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 658
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    .line 659
    .local v1, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data1"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v7

    .line 661
    .local v7, "child":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 663
    .local v6, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    const/4 v10, 0x0

    .line 665
    .local v10, "supportsFormatted":Z
    iget-object v0, v1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, v1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 667
    .local v8, "field":Lcom/android/contacts/model/account/AccountType$EditField;
    const-string v0, "data1"

    iget-object v2, v8, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const/4 v10, 0x1

    .line 674
    .end local v8    # "field":Lcom/android/contacts/model/account/AccountType$EditField;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez v10, :cond_2

    .line 675
    const-string v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 679
    .end local v10    # "supportsFormatted":Z
    :cond_2
    return-void

    .line 661
    .end local v6    # "address":Ljava/lang/String;
    :cond_3
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static parseValues(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/account/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p2, "dataValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 685
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 686
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 687
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_1
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 696
    invoke-virtual {p1, v8}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v7

    .line 697
    .local v7, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    if-nez v7, :cond_2

    .line 698
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :cond_2
    invoke-static {v9}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    .line 704
    .local v4, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-static {v4, v7}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 708
    invoke-virtual {p0, v8}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 710
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    iget v10, v7, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 712
    :cond_3
    const/4 v0, 0x1

    .line 713
    .local v0, "addEntry":Z
    const/4 v1, 0x0

    .line 714
    .local v1, "count":I
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 715
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 716
    .local v2, "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 717
    invoke-static {v2, v9, v7}, Lcom/android/contacts/model/RawContactModifier;->areEqual(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 718
    const/4 v0, 0x0

    .line 726
    .end local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v10, v7, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, v7, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_6

    .line 727
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v0, 0x0

    .line 732
    :cond_6
    if-eqz v0, :cond_7

    .line 733
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/RawContactModifier;->adjustType(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v0

    .line 736
    :cond_7
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto/16 :goto_0

    .line 721
    .restart local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 741
    .end local v0    # "addEntry":Z
    .end local v1    # "count":I
    .end local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v0, 0x1

    .line 742
    .restart local v0    # "addEntry":Z
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 743
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 744
    .restart local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v2, v7}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 745
    const/4 v0, 0x0

    .line 749
    .end local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_b
    if-eqz v0, :cond_c

    .line 750
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 751
    .restart local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 756
    .end local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_c
    if-eqz v0, :cond_d

    .line 757
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/RawContactModifier;->adjustType(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v0

    .line 760
    :cond_d
    if-eqz v0, :cond_e

    .line 761
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    goto/16 :goto_0

    .line 762
    :cond_e
    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 765
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 766
    .restart local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-static {v2, v7}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 767
    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 773
    .end local v2    # "delta":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_10
    sget-object v10, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 778
    .end local v0    # "addEntry":Z
    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .end local v4    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v7    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_11
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)V
    .locals 14
    .param p0, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/account/AccountType;

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 428
    .local v2, "hasValues":Z
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/dataitem/DataKind;

    .line 429
    .local v8, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iget-object v9, v8, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 430
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 431
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 435
    .local v1, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isInsert()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isUpdate()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/4 v10, 0x1

    .line 436
    .local v10, "touched":Z
    :goto_1
    if-nez v10, :cond_4

    .line 437
    const/4 v2, 0x1

    .line 438
    goto :goto_0

    .line 435
    .end local v10    # "touched":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 442
    .restart local v10    # "touched":Z
    :cond_4
    const-string v11, "com.google"

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v12

    const-string v13, "account_type"

    invoke-virtual {v12, v13}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 444
    .local v5, "isGoogleAccount":Z
    const-string v11, "vnd.android.cursor.item/photo"

    iget-object v12, v8, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 445
    .local v7, "isPhoto":Z
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    .line 447
    .local v6, "isGooglePhoto":Z
    :goto_2
    invoke-static {v1, v8}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v6, :cond_6

    .line 451
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 445
    .end local v6    # "isGooglePhoto":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 452
    .restart local v6    # "isGooglePhoto":Z
    :cond_6
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isFromTemplate()Z

    move-result v11

    if-nez v11, :cond_1

    .line 453
    const/4 v2, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isGoogleAccount":Z
    .end local v6    # "isGooglePhoto":Z
    .end local v7    # "isPhoto":Z
    .end local v8    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "touched":Z
    :cond_7
    if-nez v2, :cond_8

    .line 459
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->markDeleted()V

    .line 461
    :cond_8
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 7
    .param p0, "set"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 393
    .local v3, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    .line 394
    .local v5, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "accountType":Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    .line 397
    .local v4, "type":Lcom/android/contacts/model/account/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)V

    goto :goto_0

    .line 399
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_0
    return-void
.end method
