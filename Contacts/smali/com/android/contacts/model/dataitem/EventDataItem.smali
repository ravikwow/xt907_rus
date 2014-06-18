.class public Lcom/android/contacts/model/dataitem/EventDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "EventDataItem.java"


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
