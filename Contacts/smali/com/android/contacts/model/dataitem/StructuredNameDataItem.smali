.class public Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "StructuredNameDataItem.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "rawContact"    # Lcom/android/contacts/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data9"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data7"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data9"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data7"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
