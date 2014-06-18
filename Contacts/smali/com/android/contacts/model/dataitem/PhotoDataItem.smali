.class public Lcom/android/contacts/model/dataitem/PhotoDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "PhotoDataItem.java"


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
.method public getPhoto()[B
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/PhotoDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
