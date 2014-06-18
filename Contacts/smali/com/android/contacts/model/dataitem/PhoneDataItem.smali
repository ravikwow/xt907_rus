.class public Lcom/android/contacts/model/dataitem/PhoneDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "PhoneDataItem.java"


# direct methods
.method constructor <init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "rawContact"    # Lcom/android/contacts/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    .line 37
    return-void
.end method


# virtual methods
.method public buildDataStringForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "formatted":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    .end local v0    # "formatted":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "formatted":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public computeFormattedPhoneNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getRawContact()Lcom/android/contacts/model/RawContact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, p1}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "formattedPhoneNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "formattedPhoneNumber"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v0    # "formattedPhoneNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getFormattedPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "formattedPhoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
