.class public Lcom/android/contacts/EcidContact;
.super Ljava/lang/Object;
.source "EcidContact.java"


# static fields
.field static COLUMN_CITY:I

.field static COLUMN_COMPANY:I

.field static COLUMN_COUNT:I

.field static COLUMN_COUNTRY:I

.field static COLUMN_FIRST_NAME:I

.field static COLUMN_ID:I

.field static COLUMN_LAST_NAME:I

.field static COLUMN_NAME:I

.field static COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

.field static COLUMN_NUMBER:I

.field static COLUMN_STATE:I

.field static COLUMN_STATE_ABBR:I

.field private static final CONTENT_URI:Landroid/net/Uri;

.field static m_mapEcidContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/EcidContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_bNoOutgoingCallRestriction:Z

.field public m_bizName:Ljava/lang/String;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isNanp:Z

.field public m_lastName:Ljava/lang/String;

.field public m_number:Ljava/lang/String;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://com.cequint.ecid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/contacts/EcidContact;->m_isNanp:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/contacts/EcidContact;->m_bNoOutgoingCallRestriction:Z

    return-void
.end method

.method public static clearEcidContacts()V
    .locals 2

    .prologue
    .line 103
    sget-object v1, Lcom/android/contacts/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/android/contacts/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    monitor-exit v1

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static computeDisplayName(Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 11
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "cityIDView"    # Landroid/widget/TextView;

    .prologue
    .line 397
    invoke-static {p0}, Lcom/android/contacts/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/contacts/EcidContact;

    move-result-object v1

    .line 399
    .local v1, "info":Lcom/android/contacts/EcidContact;
    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v8, ""

    .line 441
    :goto_0
    return-object v8

    .line 404
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    const/16 v9, 0x96

    if-le v8, v9, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 407
    .local v6, "wAvailable":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 411
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/contacts/EcidContact;->m_displayName:Ljava/lang/String;

    .line 413
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_stateName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 414
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_stateName:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/contacts/EcidContact;->m_displayName:Ljava/lang/String;

    .line 441
    :goto_2
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_0

    .line 404
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "wAvailable":I
    :cond_2
    const/16 v6, 0xf0

    goto :goto_1

    .line 416
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "wAvailable":I
    :cond_3
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 419
    if-eqz v6, :cond_5

    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget-object v9, v1, Lcom/android/contacts/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v8, v9

    const-string v9, ", "

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v8, v9

    int-to-float v9, v6

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 420
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v0, v8

    .line 421
    .local v0, "curCityNameWidth":I
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const-string v9, "..., "

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 422
    .local v4, "otherStrWidth":I
    sub-int v3, v6, v4

    .line 424
    .local v3, "maxCityNameWidth":I
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 425
    .local v2, "len":I
    new-array v7, v2, [F

    .line 426
    .local v7, "widths":[F
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 427
    :goto_3
    if-le v0, v3, :cond_4

    if-lez v2, :cond_4

    .line 428
    add-int/lit8 v8, v2, -0x1

    aget v8, v7, v8

    float-to-int v8, v8

    sub-int/2addr v0, v8

    .line 429
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 432
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "..., "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/contacts/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/contacts/EcidContact;->m_displayName:Ljava/lang/String;

    goto/16 :goto_2

    .line 434
    .end local v0    # "curCityNameWidth":I
    .end local v2    # "len":I
    .end local v3    # "maxCityNameWidth":I
    .end local v4    # "otherStrWidth":I
    .end local v7    # "widths":[F
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/contacts/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/contacts/EcidContact;->m_displayName:Ljava/lang/String;

    goto/16 :goto_2

    .line 438
    :cond_6
    iget-object v8, v1, Lcom/android/contacts/EcidContact;->m_countryName:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/contacts/EcidContact;->m_displayName:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public static doCacheLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/contacts/EcidContact;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberType"    # I

    .prologue
    .line 142
    const-string v1, "EcidContact"

    const-string v2, "ECID AOSP VERSION: 4.0.2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-static {p1}, Lcom/android/contacts/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/contacts/EcidContact;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/contacts/EcidContact;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberType"    # I

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v1, "EcidContact"

    const-string v3, "ECID AOSP VERSION: 4.0.2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    new-instance v0, Lcom/android/contacts/EcidContact;

    invoke-direct {v0}, Lcom/android/contacts/EcidContact;-><init>()V

    .line 125
    .local v0, "cidContact":Lcom/android/contacts/EcidContact;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EcidContact;->m_number:Ljava/lang/String;

    .line 126
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/contacts/EcidContact;->implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    .line 127
    sget-object v1, Lcom/android/contacts/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/contacts/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v0    # "cidContact":Lcom/android/contacts/EcidContact;
    :goto_1
    return-object v0

    .restart local v0    # "cidContact":Lcom/android/contacts/EcidContact;
    :cond_0
    move v1, v2

    .line 126
    goto :goto_0

    .line 134
    .end local v0    # "cidContact":Lcom/android/contacts/EcidContact;
    :cond_1
    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getContactName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "numberType"    # I

    .prologue
    .line 285
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/contacts/EcidContact;

    move-result-object v0

    .line 288
    .local v0, "info":Lcom/android/contacts/EcidContact;
    if-nez v0, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 293
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/EcidContact;->getContactName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getEcidContact(Ljava/lang/String;)Lcom/android/contacts/EcidContact;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "phoneNumber":Ljava/lang/String;
    sget-object v1, Lcom/android/contacts/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/EcidContact;

    return-object v1
.end method

.method static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "nColumn"    # I

    .prologue
    .line 273
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isECIDAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 448
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 455
    :goto_0
    return v2

    .line 451
    :cond_0
    :try_start_0
    const-string v3, "com.cequint.ecid"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    const/4 v2, 0x1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static readColumnIds(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 201
    const-string v0, "_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_ID:I

    .line 202
    const-string v0, "_COUNT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_COUNT:I

    .line 203
    const-string v0, "cid_pNumber"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_NUMBER:I

    .line 204
    const-string v0, "cid_pCityName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_CITY:I

    .line 205
    const-string v0, "cid_pStateName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_STATE:I

    .line 206
    const-string v0, "cid_pStateAbbr"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_STATE_ABBR:I

    .line 207
    const-string v0, "cid_pCountryName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_COUNTRY:I

    .line 208
    const-string v0, "cid_pCompany"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_COMPANY:I

    .line 209
    const-string v0, "cid_pName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_NAME:I

    .line 210
    const-string v0, "cid_pFirstName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_FIRST_NAME:I

    .line 211
    const-string v0, "cid_pLastName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_LAST_NAME:I

    .line 216
    const-string v0, "cid_bNoOutgoingCallRestriction"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/contacts/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    .line 218
    return-void
.end method


# virtual methods
.method public getBizName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/contacts/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/contacts/EcidContact;->m_bizName:Ljava/lang/String;

    .line 360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactDisplayName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 322
    iget-object v7, p0, Lcom/android/contacts/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .line 323
    .local v1, "bHasFName":Z
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    move v2, v5

    .line 324
    .local v2, "bHasLName":Z
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    move v0, v5

    .line 325
    .local v0, "bHasBizName":Z
    :goto_2
    iget-object v7, p0, Lcom/android/contacts/EcidContact;->m_cname:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    move v3, v5

    .line 327
    .local v3, "bHasName":Z
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-nez v1, :cond_0

    if-eqz v2, :cond_7

    .line 331
    :cond_0
    if-eqz v1, :cond_1

    .line 333
    iget-object v5, p0, Lcom/android/contacts/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    if-eqz v2, :cond_1

    .line 335
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_1
    if-eqz v2, :cond_2

    .line 338
    iget-object v5, p0, Lcom/android/contacts/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_2
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 351
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 353
    :goto_5
    return-object v5

    .end local v0    # "bHasBizName":Z
    .end local v1    # "bHasFName":Z
    .end local v2    # "bHasLName":Z
    .end local v3    # "bHasName":Z
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    move v1, v6

    .line 322
    goto :goto_0

    .restart local v1    # "bHasFName":Z
    :cond_4
    move v2, v6

    .line 323
    goto :goto_1

    .restart local v2    # "bHasLName":Z
    :cond_5
    move v0, v6

    .line 324
    goto :goto_2

    .restart local v0    # "bHasBizName":Z
    :cond_6
    move v3, v6

    .line 325
    goto :goto_3

    .line 340
    .restart local v3    # "bHasName":Z
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz v0, :cond_8

    .line 342
    iget-object v5, p0, Lcom/android/contacts/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 344
    :cond_8
    if-eqz v3, :cond_2

    .line 346
    iget-object v5, p0, Lcom/android/contacts/EcidContact;->m_cname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 353
    :cond_9
    const/4 v5, 0x0

    goto :goto_5
.end method

.method public getContactName(I)Ljava/lang/String;
    .locals 2
    .param p1, "numberType"    # I

    .prologue
    .line 300
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/EcidContact;->m_bNoOutgoingCallRestriction:Z

    if-nez v1, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/EcidContact;->getContactDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "contactDisplayName":Ljava/lang/String;
    goto :goto_0
.end method

.method public implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strNumber"    # Ljava/lang/CharSequence;
    .param p3, "isSystemProvided"    # Z
    .param p4, "isNotNanp"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p4, :cond_3

    .line 236
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    if-eqz p3, :cond_2

    const-string v1, "system"

    :goto_0
    aput-object v1, v4, v8

    const-string v1, "NOT-NANP"

    aput-object v1, v4, v7

    .line 240
    .local v4, "flags":[Ljava/lang/String;
    :goto_1
    if-nez p4, :cond_5

    move v1, v7

    :goto_2
    iput-boolean v1, p0, Lcom/android/contacts/EcidContact;->m_isNanp:Z

    .line 242
    sget-object v1, Lcom/android/contacts/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    invoke-static {v6}, Lcom/android/contacts/EcidContact;->readColumnIds(Landroid/database/Cursor;)V

    .line 246
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_NUMBER:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_callerId:Ljava/lang/String;

    .line 247
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_CITY:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_cityName:Ljava/lang/String;

    .line 248
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_STATE:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_stateName:Ljava/lang/String;

    .line 249
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_STATE_ABBR:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_stateAbbr:Ljava/lang/String;

    .line 250
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_COUNTRY:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_countryName:Ljava/lang/String;

    .line 252
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_COMPANY:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_bizName:Ljava/lang/String;

    .line 253
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_NAME:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_cname:Ljava/lang/String;

    .line 254
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_FIRST_NAME:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_firstName:Ljava/lang/String;

    .line 255
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_LAST_NAME:I

    invoke-static {v6, v1}, Lcom/android/contacts/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EcidContact;->m_lastName:Ljava/lang/String;

    .line 260
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    if-ltz v1, :cond_0

    .line 261
    sget v1, Lcom/android/contacts/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iput-boolean v7, p0, Lcom/android/contacts/EcidContact;->m_bNoOutgoingCallRestriction:Z

    .line 268
    :cond_0
    :goto_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_1
    return-void

    .line 236
    .end local v4    # "flags":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    const-string v1, "user"

    goto :goto_0

    .line 238
    :cond_3
    new-array v4, v7, [Ljava/lang/String;

    if-eqz p3, :cond_4

    const-string v1, "system"

    :goto_5
    aput-object v1, v4, v8

    .restart local v4    # "flags":[Ljava/lang/String;
    goto/16 :goto_1

    .end local v4    # "flags":[Ljava/lang/String;
    :cond_4
    const-string v1, "user"

    goto :goto_5

    .restart local v4    # "flags":[Ljava/lang/String;
    :cond_5
    move v1, v8

    .line 240
    goto/16 :goto_2

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_6
    move v7, v8

    .line 261
    goto :goto_3

    .line 266
    :cond_7
    const-string v1, "EcidContact"

    const-string v2, "No CityID found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
