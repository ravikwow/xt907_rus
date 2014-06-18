.class public Lcom/android/contacts/model/dataitem/ImDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "ImDataItem.java"


# instance fields
.field private final mCreatedFromEmail:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "rawContact"    # Lcom/android/contacts/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    .line 37
    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;Z)V
    .locals 0
    .param p1, "rawContact"    # Lcom/android/contacts/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "createdFromEmail"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    .line 42
    iput-boolean p3, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    .line 43
    return-void
.end method

.method public static createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;
    .locals 4
    .param p0, "item"    # Lcom/android/contacts/model/dataitem/EmailDataItem;

    .prologue
    .line 46
    new-instance v0, Lcom/android/contacts/model/dataitem/ImDataItem;

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getRawContact()Lcom/android/contacts/model/RawContact;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/dataitem/ImDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;Z)V

    .line 48
    .local v0, "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/dataitem/ImDataItem;->setMimeType(Ljava/lang/String;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public getChatCapability()I
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "chat_capability"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 88
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getCustomProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isCreatedFromEmail()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/contacts/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return v0
.end method

.method public isProtocolValid()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method