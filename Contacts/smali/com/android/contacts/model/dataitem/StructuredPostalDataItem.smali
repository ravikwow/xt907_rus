.class public Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "StructuredPostalDataItem.java"


# direct methods
.method constructor <init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "rawContact"    # Lcom/android/contacts/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getFormattedAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
